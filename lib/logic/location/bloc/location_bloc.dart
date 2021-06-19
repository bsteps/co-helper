import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:co_helper/utility/services/firebase_messaging_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:co_helper/constants/prefs_strings.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/models/CowinState.dart';
import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository_contract.dart';
import 'package:co_helper/data/repositories/cowin_districts_repository/cowin_districts_repository_contract.dart';
import 'package:co_helper/data/repositories/cowin_states_repository/cowin_states_repository_contract.dart';
import 'package:co_helper/data/repositories/subscriptions_respository/subscriptions_repository_contract.dart';
import 'package:co_helper/data/responses/CommonResponse.dart';
import 'package:co_helper/logic/location/models/district.dart';
import 'package:co_helper/logic/location/models/pincode.dart';
import 'package:co_helper/logic/location/models/state.dart' as locationState;
import 'package:co_helper/main.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final BuildContext context;
  LocationState? currentState;
  final SubscriptionsRepositoryContract subscriptionsRepository;
  final CowinStatesRepositoryContract statesRepository;
  final CowinDistrictsRepositoryContract districtsRepository;
  final CowinCentersRepositoryContract centersRepository;

  LocationBloc({
    required this.context,
    this.currentState,
    required this.subscriptionsRepository,
    required this.statesRepository,
    required this.districtsRepository,
    required this.centersRepository,
  }) : super(LocationDistrict()) {
    currentState = _initLocation();
    this.add(LocationInitEvent());
  }

  @override
  void onTransition(Transition<LocationEvent, LocationState> transition) {
    print(transition);
    print('\n');
    super.onTransition(transition);
  }

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    if (event is LocationInitEvent) {
      final locationState = _initLocation();
      if (locationState != null) {
        yield locationState;
      }
    }

    if (event is LocationDistrictSelectedEvent) {
      if (_prefHasLocation() == null) {
        yield _initLocationDistrict();
      } else {
        final locationState = _initLocation();
        if (locationState != null && locationState is LocationDistrict) {
          yield locationState;
        } else {
          yield _initLocationDistrict();
        }
      }
    }

    if (event is LocationPincodeSelectedEvent) {
      if (_prefHasLocation() == null) {
        yield _initLocationPincode();
      } else {
        final locationState = _initLocation();
        if (locationState != null && locationState is LocationPincode) {
          yield locationState;
        } else {
          yield _initLocationPincode();
        }
      }
    }

    if (event is LocationStateChangeEvent) {
      if (state is LocationDistrict) {
        yield LocationDistrict(
          district: District.dirty(null),
          state: locationState.State.dirty(event.state.copyWith()),
          status: Formz.validate(
              [locationState.State.dirty(event.state.copyWith())]),
        );
      } else {
        yield LocationDistrict(
          district: District.dirty(null),
          state: locationState.State.dirty(event.state.copyWith()),
          status: Formz.validate(
              [locationState.State.pure(event.state.copyWith())]),
        );
      }
    }

    if (event is LocationDistrictChangeEvent) {
      if (state is LocationDistrict) {
        yield LocationDistrict(
          state: (state as LocationDistrict).state,
          district: District.dirty(event.district?.copyWith() ?? null),
          status: Formz.validate(
              [District.dirty(event.district?.copyWith() ?? null)]),
        );
      } else {
        yield LocationDistrict(
          district: District.dirty(event.district),
          status: Formz.validate([District.dirty(event.district)]),
        );
      }
    }

    if (event is LocationPincodeChangeEvent) {
      if (state is LocationPincode) {
        final pincode = Pincode.dirty(event.pincode ?? "");
        yield (state as LocationPincode).copyWith(
          pincode: pincode,
          status: Formz.validate([pincode]),
        );
      } else {
        final pincode = Pincode.dirty(event.pincode ?? "");
        yield LocationPincode(
          pincode: pincode,
          status: Formz.validate([pincode]),
        );
      }
    }

    if (event is LocationSelectedEvent) {
      if (state is LocationPincode) {
        final newState = (state as LocationPincode);
        yield newState.copyWith(
          status: FormzStatus.submissionInProgress,
        );

        final pincode = Pincode.dirty(newState.pincode.value);
        final pincodeStatus = Formz.validate([pincode]);

        if (pincodeStatus == FormzStatus.valid) {
          context
              .read<SharedPreferences>()
              .setString(PrefStrings.location, newState.toJson());
          currentState = _initLocation();
        }

        yield newState.copyWith(
          pincode: pincode,
          status: pincodeStatus == FormzStatus.valid
              ? FormzStatus.submissionSuccess
              : pincodeStatus,
        );
      } else if (state is LocationDistrict) {
        final newState = (state as LocationDistrict);
        yield newState.copyWith(
          status: FormzStatus.submissionInProgress,
        );

        final localLocationState =
            locationState.State.dirty(newState.state.value);
        final district = District.dirty(newState.district.value);

        final districtStatus = Formz.validate([localLocationState, district]);

        if (districtStatus == FormzStatus.valid) {
          context
              .read<SharedPreferences>()
              .setString(PrefStrings.location, newState.toJson());
          currentState = _initLocation();
        }
        yield (state as LocationDistrict).copyWith(
          district: district,
          state: localLocationState,
          status: districtStatus == FormzStatus.valid
              ? FormzStatus.submissionSuccess
              : districtStatus,
        );
      }
    }

    if (event is LocationSubscribeEvent) {
      if (state is LocationPincode) {
        final newState = (state as LocationPincode);
        yield newState.copyWith(
          status: FormzStatus.submissionInProgress,
        );

        final pincode = Pincode.dirty(newState.pincode.value);
        final pincodeStatus = Formz.validate([pincode]);

        if (pincodeStatus == FormzStatus.valid) {
          try {
            final CowinCenter? center = (await centersRepository
                    .fetchCowinCenterByPin(pincode.value, DateTime.now()))
                .first;
            if (center == null) {
              throw HttpException("No center available on specified pincode",
                  "Cowin Center", 0);
            }

            final CowinState? state =
                (await statesRepository.fetchCowinStates())
                    .firstWhere((state) => state.stateName == center.stateName);
            if (state == null) {
              throw HttpException(
                  "No state available on specified pincode", "Cowin State", 0);
            }

            final CowinDistrict? district = (await districtsRepository
                    .fetchCowinDistricts(state.stateId))
                .firstWhere(
                    (district) => district.districtName == center.districtName);
            if (district == null) {
              throw HttpException("No district available on specified pincode",
                  "Cowin District", 0);
            }

            final CommonResponse response =
                await subscriptionsRepository.subscribePincode(
              districtId: district.districtId,
              districtName: district.districtName,
              firebaseId: FirebaseMessagingService.token ?? "",
              pincode: pincode.value,
            );
            scaffoldMessengerKey.currentState
                ?.showSnackBar(SnackBar(content: Text(response.message)));
          } on HttpException catch (e) {
            scaffoldMessengerKey.currentState
                ?.showSnackBar(SnackBar(content: Text(e.message)));
          }
        }

        yield newState.copyWith(
          pincode: pincode,
          status: pincodeStatus,
        );
      } else if (state is LocationDistrict) {
        final newState = (state as LocationDistrict);
        yield newState.copyWith(
          status: FormzStatus.submissionInProgress,
        );

        final localLocationState =
            locationState.State.dirty(newState.state.value);
        final district = District.dirty(newState.district.value);

        final districtStatus = Formz.validate([localLocationState, district]);

        if (districtStatus == FormzStatus.valid) {
          try {
            final CommonResponse response =
                await subscriptionsRepository.subscribeDistrict(
                    firebaseId: FirebaseMessagingService.token ?? "",
                    districtId: district.value!.districtId,
                    districtName: district.value!.districtName);
            scaffoldMessengerKey.currentState
                ?.showSnackBar(SnackBar(content: Text(response.message)));
          } on HttpException catch (e) {
            scaffoldMessengerKey.currentState
                ?.showSnackBar(SnackBar(content: Text(e.message)));
          }
        }

        yield (state as LocationDistrict).copyWith(
          district: district,
          state: localLocationState,
          status: districtStatus,
        );
      }
    }
  }

  LocationPincode _initLocationPincode() {
    final pincode = Pincode.pure('');
    return LocationPincode(
      pincode: pincode,
      status: Formz.validate([pincode]),
    );
  }

  LocationDistrict _initLocationDistrict() {
    final district = District.pure(null);
    final state = locationState.State.pure(null);
    return LocationDistrict(
      district: district,
      state: state,
      status: Formz.validate([district, state]),
    );
  }

  LocationState? _initLocation() {
    String locationStateString = _prefHasLocation() ?? '';
    print(locationStateString);
    try {
      if (locationStateString.contains("pincode")) {
        return LocationPincode.fromJson(locationStateString);
      }
      if (locationStateString.contains("district")) {
        return LocationDistrict.fromJson(locationStateString);
      }
    } catch (e) {}
  }

  String? _prefHasLocation() {
    final locationStateString =
        this.context.read<SharedPreferences>().getString(PrefStrings.location);
    return locationStateString;
  }
}
