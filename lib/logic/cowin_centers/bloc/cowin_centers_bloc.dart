import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository_contract.dart';
import 'package:co_helper/data/repositories/subscriptions_respository/subscriptions_repository_contract.dart';
import 'package:co_helper/data/responses/CommonResponse.dart';
import 'package:co_helper/logic/location/bloc/location_bloc.dart';
import 'package:co_helper/main.dart';
import 'package:co_helper/utility/services/firebase_messaging_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'cowin_centers_event.dart';
part 'cowin_centers_state.dart';

class CowinCentersBloc extends Bloc<CowinCentersEvent, CowinCentersState> {
  final CowinCentersRepositoryContract cowinCentersRepository;
  final LocationBloc locationBloc;
  final SubscriptionsRepositoryContract subscriptionsRepository;

  CowinCentersBloc({
    required this.cowinCentersRepository,
    required this.locationBloc,
    required this.subscriptionsRepository,
  }) : super(CowinCentersInitial());

  @override
  void onTransition(
      Transition<CowinCentersEvent, CowinCentersState> transition) {
    print(transition);
    print('\n');
    super.onTransition(transition);
  }

  @override
  Stream<Transition<CowinCentersEvent, CowinCentersState>> transformEvents(
      Stream<CowinCentersEvent> events, transitionFn) {
    final nonDebounceStream =
        events.where((event) => event is! CowinCentersSearchEvent);
    final debounceStream = events
        .where((event) => event is CowinCentersSearchEvent)
        .debounceTime(Duration(milliseconds: 500));

    return super.transformEvents(
      MergeStream([nonDebounceStream, debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<CowinCentersState> mapEventToState(
    CowinCentersEvent event,
  ) async* {
    if (event is CowinCentersInitEvent) {
      yield CowinCentersLoading();

      try {
        final centerLoaded = await loadCenters();
        if (centerLoaded != null) yield centerLoaded;
      } on HttpException catch (e) {
        yield CowinCentersError(message: e.toString(), status: e.status);
      } catch (e) {
        yield CowinCentersError(message: e.toString(), status: 500);
      }
    }

    if (event is CowinCentersSearchEvent) {
      yield CowinCentersSearchLoading(
        centers: state.centers,
        filters: state.filters,
        searchValue: state.searchValue,
      );

      try {
        yield searchCenters(event.text);
      } on HttpException catch (e) {
        yield CowinCentersError(message: e.toString(), status: e.status);
      } catch (e) {
        yield CowinCentersError(message: e.toString(), status: 500);
      }
    }

    if (event is CowinCentersReloadEvent) {
      yield CowinCentersLoading(
        filters: state.filters,
        searchValue: state.searchValue,
      );

      try {
        final centerLoaded = await loadCenters();

        if (centerLoaded != null)
          yield filterCenters(
            centerLoaded.centers,
            filters: state.filters,
          );
      } on HttpException catch (e) {
        yield CowinCentersError(message: e.toString(), status: e.status);
      } catch (e) {
        yield CowinCentersError(message: e.toString(), status: 500);
      }
    }

    if (event is CowinCentersFilterSelectedEvent) {
      yield CowinCentersFilterLoading(
        centers: state.centers,
        filters: state.filters,
        searchValue: state.searchValue,
      );

      try {
        yield filterCenters(
          state.centers,
          searchValue: state.searchValue,
          filters: state.filters,
        );
      } on HttpException catch (e) {
        yield CowinCentersError(message: e.toString(), status: e.status);
      } catch (e) {
        yield CowinCentersError(message: e.toString(), status: 500);
      }
    }

    if (event is CowinCentersSubscribeEvent) {
      if (state is CowinCentersLoaded || state is CowinCentersSubscribing) {
        yield CowinCentersSubscribing(
          centers: state.centers,
          filters: state.filters,
          searchValue: state.searchValue,
          currentList: (state as CowinCentersLoaded).currentList,
        );

        try {
          final CommonResponse response =
              await subscriptionsRepository.subscribeCenter(
            firebaseId: FirebaseMessagingService.token ?? "",
            centerId: event.cowinCenter.centerId,
            centerName: event.cowinCenter.name,
          );

          scaffoldMessengerKey.currentState
              ?.showSnackBar(SnackBar(content: Text(response.message)));

          yield CowinCentersLoaded(
            centers: state.centers,
            filters: state.filters,
            searchValue: state.searchValue,
            currentList: (state as CowinCentersLoaded).currentList,
          );
        } on HttpException catch (e) {
          scaffoldMessengerKey.currentState
              ?.showSnackBar(SnackBar(content: Text(e.message)));
        } catch (e) {
          yield CowinCentersError(message: e.toString(), status: 500);
        }
      }
    }

    if (event is CowinCentersFilterEvent && state is CowinCentersLoaded) {
      try {
        Map<String, Set<String>> filters = Map.from(state.filters ?? Map());

        Set<String>? filterData =
            filters.containsKey(event.key) ? filters[event.key] : null;

        Set<String> setData = Set.from(filterData ?? Set());

        if (setData.contains(event.value)) {
          filters.addAll({event.key: setData..remove(event.value)});
        } else {
          filters.addAll({event.key: setData..add(event.value)});
        }

        yield CowinCentersLoaded(
            currentList: (state as CowinCentersLoaded).currentList,
            centers: state.centers,
            filters: filters,
            searchValue: state.searchValue);
      } on HttpException catch (e) {
        yield CowinCentersError(message: e.toString(), status: e.status);
      } catch (e) {
        rethrow;
        yield CowinCentersError(message: e.toString(), status: 500);
      }
    }
  }

  Future<CowinCentersLoaded?> loadCenters() async {
    if (locationBloc.currentState == null) return null;
    if (locationBloc.currentState is LocationPincode) {
      final data = await cowinCentersRepository.fetchCowinCenterByPin(
        (locationBloc.currentState as LocationPincode).pincode.value,
        DateTime.now(),
      );
      return CowinCentersLoaded(
        centers: data,
        currentList: data,
      );
    } else if (locationBloc.currentState is LocationDistrict &&
        (locationBloc.currentState as LocationDistrict).district.value !=
            null) {
      final data = await cowinCentersRepository.fetchCowinCenterByDistrict(
          (locationBloc.currentState as LocationDistrict).district.value!,
          DateTime.now());
      return CowinCentersLoaded(
        centers: data,
        currentList: data,
      );
    }
  }

  CowinCentersLoaded searchCenters(String value) {
    final lowerValue = value.toLowerCase();
    return CowinCentersLoaded(
      centers: state.centers,
      searchValue: lowerValue,
      currentList: cowinCentersRepository.filterSearchCowinCenters(
        state.centers,
        state.filters ?? {},
        lowerValue,
      ),
      filters: state.filters,
    );
  }

  CowinCentersLoaded filterCenters(
    List<CowinCenter> centers, {
    String? searchValue,
    Map<String, Set<String>>? filters,
  }) {
    final String? lowerValue = searchValue?.toLowerCase();
    return CowinCentersLoaded(
      centers: centers,
      filters: filters ?? Map(),
      searchValue: searchValue,
      currentList: cowinCentersRepository.filterSearchCowinCenters(
        centers,
        filters ?? Map(),
        lowerValue ?? '',
      ),
    );
  }
}
