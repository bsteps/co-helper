// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'Subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
class _$SubscriptionTearOff {
  const _$SubscriptionTearOff();

  _Subscription call(
      {required int id,
      @JsonKey(name: 'firebase_id') required String firebaseId,
      required String type,
      int? age,
      @JsonKey(name: 'district_id') int? districtId,
      @JsonKey(name: 'district_name') String? districtName,
      int? pincode,
      @JsonKey(name: 'center_id') int? centerId,
      @JsonKey(name: 'center_name') String? centerName,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt}) {
    return _Subscription(
      id: id,
      firebaseId: firebaseId,
      type: type,
      age: age,
      districtId: districtId,
      districtName: districtName,
      pincode: pincode,
      centerId: centerId,
      centerName: centerName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Subscription fromJson(Map<String, Object> json) {
    return Subscription.fromJson(json);
  }
}

/// @nodoc
const $Subscription = _$SubscriptionTearOff();

/// @nodoc
mixin _$Subscription {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firebase_id')
  String get firebaseId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_name')
  String? get districtName => throw _privateConstructorUsedError;
  int? get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: 'center_id')
  int? get centerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'center_name')
  String? get centerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'firebase_id') String firebaseId,
      String type,
      int? age,
      @JsonKey(name: 'district_id') int? districtId,
      @JsonKey(name: 'district_name') String? districtName,
      int? pincode,
      @JsonKey(name: 'center_id') int? centerId,
      @JsonKey(name: 'center_name') String? centerName,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  final Subscription _value;
  // ignore: unused_field
  final $Res Function(Subscription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firebaseId = freezed,
    Object? type = freezed,
    Object? age = freezed,
    Object? districtId = freezed,
    Object? districtName = freezed,
    Object? pincode = freezed,
    Object? centerId = freezed,
    Object? centerName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firebaseId: firebaseId == freezed
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: districtId == freezed
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtName: districtName == freezed
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      centerId: centerId == freezed
          ? _value.centerId
          : centerId // ignore: cast_nullable_to_non_nullable
              as int?,
      centerName: centerName == freezed
          ? _value.centerName
          : centerName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) then) =
      __$SubscriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'firebase_id') String firebaseId,
      String type,
      int? age,
      @JsonKey(name: 'district_id') int? districtId,
      @JsonKey(name: 'district_name') String? districtName,
      int? pincode,
      @JsonKey(name: 'center_id') int? centerId,
      @JsonKey(name: 'center_name') String? centerName,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res> extends _$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(
      _Subscription _value, $Res Function(_Subscription) _then)
      : super(_value, (v) => _then(v as _Subscription));

  @override
  _Subscription get _value => super._value as _Subscription;

  @override
  $Res call({
    Object? id = freezed,
    Object? firebaseId = freezed,
    Object? type = freezed,
    Object? age = freezed,
    Object? districtId = freezed,
    Object? districtName = freezed,
    Object? pincode = freezed,
    Object? centerId = freezed,
    Object? centerName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Subscription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firebaseId: firebaseId == freezed
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: districtId == freezed
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtName: districtName == freezed
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      centerId: centerId == freezed
          ? _value.centerId
          : centerId // ignore: cast_nullable_to_non_nullable
              as int?,
      centerName: centerName == freezed
          ? _value.centerName
          : centerName // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Subscription extends _Subscription with DiagnosticableTreeMixin {
  const _$_Subscription(
      {required this.id,
      @JsonKey(name: 'firebase_id') required this.firebaseId,
      required this.type,
      this.age,
      @JsonKey(name: 'district_id') this.districtId,
      @JsonKey(name: 'district_name') this.districtName,
      this.pincode,
      @JsonKey(name: 'center_id') this.centerId,
      @JsonKey(name: 'center_name') this.centerName,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_Subscription.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscriptionFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'firebase_id')
  final String firebaseId;
  @override
  final String type;
  @override
  final int? age;
  @override
  @JsonKey(name: 'district_id')
  final int? districtId;
  @override
  @JsonKey(name: 'district_name')
  final String? districtName;
  @override
  final int? pincode;
  @override
  @JsonKey(name: 'center_id')
  final int? centerId;
  @override
  @JsonKey(name: 'center_name')
  final String? centerName;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Subscription(id: $id, firebaseId: $firebaseId, type: $type, age: $age, districtId: $districtId, districtName: $districtName, pincode: $pincode, centerId: $centerId, centerName: $centerName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Subscription'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firebaseId', firebaseId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('districtId', districtId))
      ..add(DiagnosticsProperty('districtName', districtName))
      ..add(DiagnosticsProperty('pincode', pincode))
      ..add(DiagnosticsProperty('centerId', centerId))
      ..add(DiagnosticsProperty('centerName', centerName))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subscription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firebaseId, firebaseId) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseId, firebaseId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.districtId, districtId) ||
                const DeepCollectionEquality()
                    .equals(other.districtId, districtId)) &&
            (identical(other.districtName, districtName) ||
                const DeepCollectionEquality()
                    .equals(other.districtName, districtName)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality()
                    .equals(other.pincode, pincode)) &&
            (identical(other.centerId, centerId) ||
                const DeepCollectionEquality()
                    .equals(other.centerId, centerId)) &&
            (identical(other.centerName, centerName) ||
                const DeepCollectionEquality()
                    .equals(other.centerName, centerName)) &&
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
      const DeepCollectionEquality().hash(firebaseId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(districtId) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(centerId) ^
      const DeepCollectionEquality().hash(centerName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscriptionToJson(this);
  }
}

abstract class _Subscription extends Subscription {
  const factory _Subscription(
          {required int id,
          @JsonKey(name: 'firebase_id') required String firebaseId,
          required String type,
          int? age,
          @JsonKey(name: 'district_id') int? districtId,
          @JsonKey(name: 'district_name') String? districtName,
          int? pincode,
          @JsonKey(name: 'center_id') int? centerId,
          @JsonKey(name: 'center_name') String? centerName,
          @JsonKey(name: 'created_at') required String createdAt,
          @JsonKey(name: 'updated_at') required String updatedAt}) =
      _$_Subscription;
  const _Subscription._() : super._();

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$_Subscription.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'firebase_id')
  String get firebaseId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  int? get age => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'district_name')
  String? get districtName => throw _privateConstructorUsedError;
  @override
  int? get pincode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'center_id')
  int? get centerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'center_name')
  String? get centerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}
