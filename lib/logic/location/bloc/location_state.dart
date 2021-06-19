part of 'location_bloc.dart';

@immutable
abstract class LocationState extends Equatable {
  const LocationState();

  LocationState copyWith();
  Map<String, dynamic> toMap();
  String toJson();

  @override
  List<Object?> get props => [];
}

class LocationDistrict extends LocationState {
  final locationState.State state;
  final District district;
  final FormzStatus status;

  const LocationDistrict({
    this.state = const locationState.State.pure(null),
    this.district = const District.pure(null),
    this.status = FormzStatus.pure,
  });

  @override
  List<Object?> get props => [state, district, status];

  LocationDistrict copyWith({
    locationState.State? state,
    District? district,
    FormzStatus? status,
    LocationState? currentState,
  }) {
    return LocationDistrict(
      state: state ?? this.state,
      district: district ?? this.district,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state.value,
      'district': district.value,
    };
  }

  factory LocationDistrict.fromMap(Map<String, dynamic> map) {
    return LocationDistrict(
      state: locationState.State.pure(CowinState.fromJson(map['state'])),
      district: District.pure(CowinDistrict.fromJson(map['district'])),
      status: FormzStatus.valid,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationDistrict.fromJson(String source) =>
      LocationDistrict.fromMap(json.decode(source));
}

class LocationPincode extends LocationState {
  final Pincode pincode;
  final FormzStatus status;

  const LocationPincode({
    this.pincode = const Pincode.pure(""),
    this.status = FormzStatus.pure,
  });

  @override
  List<Object?> get props => [pincode, status];

  LocationPincode copyWith({
    Pincode? pincode,
    FormzStatus? status,
  }) {
    return LocationPincode(
      pincode: pincode ?? this.pincode,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pincode': pincode.value,
    };
  }

  factory LocationPincode.fromMap(Map<String, dynamic> map) {
    return LocationPincode(
      pincode: Pincode.pure(map['pincode']),
      status: FormzStatus.valid,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationPincode.fromJson(String source) =>
      LocationPincode.fromMap(json.decode(source));
}
