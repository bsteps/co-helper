part of 'cowin_districts_bloc.dart';

@immutable
abstract class CowinDistrictsEvent extends Equatable {
  const CowinDistrictsEvent();

  @override
  List<Object> get props => [];
}

class CowinDistrictsReloadEvent extends CowinDistrictsEvent {
  final int stateId;

  CowinDistrictsReloadEvent(this.stateId);
}

class CowinDistrictsInitEvent extends CowinDistrictsEvent {
  final int stateId;

  CowinDistrictsInitEvent(this.stateId);
}