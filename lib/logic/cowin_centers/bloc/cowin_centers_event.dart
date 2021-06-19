part of 'cowin_centers_bloc.dart';

abstract class CowinCentersEvent extends Equatable {
  const CowinCentersEvent();

  @override
  List<Object> get props => [];
}

class CowinCentersReloadEvent extends CowinCentersEvent {
  const CowinCentersReloadEvent();
}

class CowinCentersSearchEvent extends CowinCentersEvent {
  final String text;
  const CowinCentersSearchEvent({required this.text});
}

class CowinCentersSubscribeEvent extends CowinCentersEvent {
  final CowinCenter cowinCenter;
  const CowinCentersSubscribeEvent({required this.cowinCenter});
}

class CowinCentersFilterEvent extends CowinCentersEvent {
  final String key;
  final String value;

  const CowinCentersFilterEvent({
    required this.key,
    required this.value,
  });
}

class CowinCentersFilterSelectedEvent extends CowinCentersEvent {

  const CowinCentersFilterSelectedEvent();
}

class CowinCentersInitEvent extends CowinCentersEvent {
  const CowinCentersInitEvent();
}
