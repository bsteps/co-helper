part of 'location_bloc.dart';

@immutable
abstract class LocationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LocationPincodeSelectedEvent extends LocationEvent {
}

class LocationInitEvent extends LocationEvent {
}

class LocationDistrictSelectedEvent extends LocationEvent {
}

class LocationStateChangeEvent implements LocationEvent {
  final CowinState state;

  const LocationStateChangeEvent({required this.state});

  @override
  List<Object?> get props => [state];

  @override
  bool? get stringify => null;
}

class LocationDistrictChangeEvent implements LocationEvent {
  final CowinDistrict? district;

  const LocationDistrictChangeEvent({required this.district});

  @override
  List<Object?> get props => [district];

  @override
  bool? get stringify => null;
}

class LocationPincodeChangeEvent implements LocationEvent {
  final String? pincode;

  const LocationPincodeChangeEvent({required this.pincode});

  @override
  List<Object?> get props => [pincode];

  @override
  bool? get stringify => null;
}

class LocationSelectedEvent implements LocationEvent {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => null;
}

class LocationSubscribeEvent implements LocationEvent {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => null;
}
