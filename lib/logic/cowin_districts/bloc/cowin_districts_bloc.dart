import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/repositories/cowin_districts_repository/cowin_districts_repository_contract.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'cowin_districts_state.dart';
part 'cowin_districts_event.dart';

class CowinDistrictsBloc extends Bloc<CowinDistrictsEvent, CowinDistrictsState> {
  final CowinDistrictsRepositoryContract repository;

  CowinDistrictsBloc({required this.repository}) : super(CowinDistrictsInitial());

  @override
  void onTransition(Transition<CowinDistrictsEvent, CowinDistrictsState> transition) {
    print(transition);
    print('\n');
    super.onTransition(transition);
  }


  @override
  Stream<CowinDistrictsState> mapEventToState(
    CowinDistrictsEvent event,
  ) async* {
    if (event is CowinDistrictsInitEvent) {
      yield CowinDistrictsLoading();

      try {
        yield CowinDistrictsLoaded(districts: await repository.fetchCowinDistricts(event.stateId));
      } on HttpException catch (e) {
        yield CowinDistrictsError(message: e.toString(), status: e.status);
      } catch (e) {
        print("Non Handle Error" + e.toString());
      }
    }
    
    if (event is CowinDistrictsReloadEvent) {
      yield CowinDistrictsLoading();

      try {
        yield CowinDistrictsLoaded(districts: await repository.fetchCowinDistricts(event.stateId));
      } on HttpException catch (e) {
        yield CowinDistrictsError(message: e.toString(), status: e.status);
      }
    }
  }
}
