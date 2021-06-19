part of 'cowin_states_bloc.dart';

@immutable
abstract class CowinStatesEvent extends Equatable {
  const CowinStatesEvent();

  @override
  List<Object> get props => [];
}

class CowinStatesReloadEvent extends CowinStatesEvent {
  
}

class CowinStatesInitEvent extends CowinStatesEvent {

}