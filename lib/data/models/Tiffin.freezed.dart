// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'Tiffin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tiffin _$TiffinFromJson(Map<String, dynamic> json) {
  return _Tiffin.fromJson(json);
}

/// @nodoc
class _$TiffinTearOff {
  const _$TiffinTearOff();

  _Tiffin call(
      {required int id,
      required String name,
      @JsonKey(name: 'types_of_food') required List<String> typesOfFood,
      required List<String> cuisines,
      @JsonKey(name: 'mobile_number') required String mobileNumber,
      @JsonKey(name: 'area_of_delivery') required String areaOfDelivery,
      required List<String> areas,
      Point? location,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt}) {
    return _Tiffin(
      id: id,
      name: name,
      typesOfFood: typesOfFood,
      cuisines: cuisines,
      mobileNumber: mobileNumber,
      areaOfDelivery: areaOfDelivery,
      areas: areas,
      location: location,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Tiffin fromJson(Map<String, Object> json) {
    return Tiffin.fromJson(json);
  }
}

/// @nodoc
const $Tiffin = _$TiffinTearOff();

/// @nodoc
mixin _$Tiffin {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'types_of_food')
  List<String> get typesOfFood => throw _privateConstructorUsedError;
  List<String> get cuisines => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_of_delivery')
  String get areaOfDelivery => throw _privateConstructorUsedError;
  List<String> get areas => throw _privateConstructorUsedError;
  Point? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TiffinCopyWith<Tiffin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinCopyWith<$Res> {
  factory $TiffinCopyWith(Tiffin value, $Res Function(Tiffin) then) =
      _$TiffinCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'types_of_food') List<String> typesOfFood,
      List<String> cuisines,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'area_of_delivery') String areaOfDelivery,
      List<String> areas,
      Point? location,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  $PointCopyWith<$Res>? get location;
}

/// @nodoc
class _$TiffinCopyWithImpl<$Res> implements $TiffinCopyWith<$Res> {
  _$TiffinCopyWithImpl(this._value, this._then);

  final Tiffin _value;
  // ignore: unused_field
  final $Res Function(Tiffin) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? typesOfFood = freezed,
    Object? cuisines = freezed,
    Object? mobileNumber = freezed,
    Object? areaOfDelivery = freezed,
    Object? areas = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typesOfFood: typesOfFood == freezed
          ? _value.typesOfFood
          : typesOfFood // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      areaOfDelivery: areaOfDelivery == freezed
          ? _value.areaOfDelivery
          : areaOfDelivery // ignore: cast_nullable_to_non_nullable
              as String,
      areas: areas == freezed
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PointCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $PointCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$TiffinCopyWith<$Res> implements $TiffinCopyWith<$Res> {
  factory _$TiffinCopyWith(_Tiffin value, $Res Function(_Tiffin) then) =
      __$TiffinCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'types_of_food') List<String> typesOfFood,
      List<String> cuisines,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'area_of_delivery') String areaOfDelivery,
      List<String> areas,
      Point? location,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  @override
  $PointCopyWith<$Res>? get location;
}

/// @nodoc
class __$TiffinCopyWithImpl<$Res> extends _$TiffinCopyWithImpl<$Res>
    implements _$TiffinCopyWith<$Res> {
  __$TiffinCopyWithImpl(_Tiffin _value, $Res Function(_Tiffin) _then)
      : super(_value, (v) => _then(v as _Tiffin));

  @override
  _Tiffin get _value => super._value as _Tiffin;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? typesOfFood = freezed,
    Object? cuisines = freezed,
    Object? mobileNumber = freezed,
    Object? areaOfDelivery = freezed,
    Object? areas = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Tiffin(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typesOfFood: typesOfFood == freezed
          ? _value.typesOfFood
          : typesOfFood // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      areaOfDelivery: areaOfDelivery == freezed
          ? _value.areaOfDelivery
          : areaOfDelivery // ignore: cast_nullable_to_non_nullable
              as String,
      areas: areas == freezed
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tiffin extends _Tiffin with DiagnosticableTreeMixin {
  const _$_Tiffin(
      {required this.id,
      required this.name,
      @JsonKey(name: 'types_of_food') required this.typesOfFood,
      required this.cuisines,
      @JsonKey(name: 'mobile_number') required this.mobileNumber,
      @JsonKey(name: 'area_of_delivery') required this.areaOfDelivery,
      required this.areas,
      this.location,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_Tiffin.fromJson(Map<String, dynamic> json) =>
      _$_$_TiffinFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'types_of_food')
  final List<String> typesOfFood;
  @override
  final List<String> cuisines;
  @override
  @JsonKey(name: 'mobile_number')
  final String mobileNumber;
  @override
  @JsonKey(name: 'area_of_delivery')
  final String areaOfDelivery;
  @override
  final List<String> areas;
  @override
  final Point? location;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tiffin(id: $id, name: $name, typesOfFood: $typesOfFood, cuisines: $cuisines, mobileNumber: $mobileNumber, areaOfDelivery: $areaOfDelivery, areas: $areas, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tiffin'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('typesOfFood', typesOfFood))
      ..add(DiagnosticsProperty('cuisines', cuisines))
      ..add(DiagnosticsProperty('mobileNumber', mobileNumber))
      ..add(DiagnosticsProperty('areaOfDelivery', areaOfDelivery))
      ..add(DiagnosticsProperty('areas', areas))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tiffin &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.typesOfFood, typesOfFood) ||
                const DeepCollectionEquality()
                    .equals(other.typesOfFood, typesOfFood)) &&
            (identical(other.cuisines, cuisines) ||
                const DeepCollectionEquality()
                    .equals(other.cuisines, cuisines)) &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobileNumber, mobileNumber)) &&
            (identical(other.areaOfDelivery, areaOfDelivery) ||
                const DeepCollectionEquality()
                    .equals(other.areaOfDelivery, areaOfDelivery)) &&
            (identical(other.areas, areas) ||
                const DeepCollectionEquality().equals(other.areas, areas)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(typesOfFood) ^
      const DeepCollectionEquality().hash(cuisines) ^
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(areaOfDelivery) ^
      const DeepCollectionEquality().hash(areas) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TiffinCopyWith<_Tiffin> get copyWith =>
      __$TiffinCopyWithImpl<_Tiffin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TiffinToJson(this);
  }
}

abstract class _Tiffin extends Tiffin {
  const factory _Tiffin(
      {required int id,
      required String name,
      @JsonKey(name: 'types_of_food') required List<String> typesOfFood,
      required List<String> cuisines,
      @JsonKey(name: 'mobile_number') required String mobileNumber,
      @JsonKey(name: 'area_of_delivery') required String areaOfDelivery,
      required List<String> areas,
      Point? location,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt}) = _$_Tiffin;
  const _Tiffin._() : super._();

  factory _Tiffin.fromJson(Map<String, dynamic> json) = _$_Tiffin.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'types_of_food')
  List<String> get typesOfFood => throw _privateConstructorUsedError;
  @override
  List<String> get cuisines => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'area_of_delivery')
  String get areaOfDelivery => throw _privateConstructorUsedError;
  @override
  List<String> get areas => throw _privateConstructorUsedError;
  @override
  Point? get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TiffinCopyWith<_Tiffin> get copyWith => throw _privateConstructorUsedError;
}
