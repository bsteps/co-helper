import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/models/CowinState.dart';
import 'package:co_helper/data/repositories/cowin_states_repository/cowin_states_repository_contract.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'cowin_states_state.dart';
part 'cowin_states_event.dart';

class CowinStatesBloc extends Bloc<CowinStatesEvent, CowinStatesState> {
  final CowinStatesRepositoryContract repository;

  CowinStatesBloc({required this.repository}) : super(CowinStatesInitial());


  @override
  void onTransition(Transition<CowinStatesEvent, CowinStatesState> transition) {
    print(transition);
    print('\n');
    super.onTransition(transition);
  }

  @override
  Stream<CowinStatesState> mapEventToState(
    CowinStatesEvent event,
  ) async* {
    if (event is CowinStatesInitEvent) {
      yield CowinStatesLoading();

      try {
        yield CowinStatesLoaded(states: await repository.fetchCowinStates());
      } on HttpException catch (e) {
        yield CowinStatesError(message: e.toString(), status: e.status);
      } catch (e) {
        print("Non Handle Error" + e.toString());
      }
    }
    if (event is CowinStatesReloadEvent) {
      yield CowinStatesLoading();

      try {
        yield CowinStatesLoaded(states: await repository.fetchCowinStates());
      } on HttpException catch (e) {
        yield CowinStatesError(message: e.toString(), status: e.status);
      }
    }
  }
}
