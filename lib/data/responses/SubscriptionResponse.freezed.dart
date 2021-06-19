// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'SubscriptionResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionResponse _$SubscriptionResponseFromJson(Map<String, dynamic> json) {
  return _SubscriptionResponse.fromJson(json);
}

/// @nodoc
class _$SubscriptionResponseTearOff {
  const _$SubscriptionResponseTearOff();

  _SubscriptionResponse call(
      {List<Subscription>? data,
      required String message,
      required String status}) {
    return _SubscriptionResponse(
      data: data,
      message: message,
      status: status,
    );
  }

  SubscriptionResponse fromJson(Map<String, Object> json) {
    return SubscriptionResponse.fromJson(json);
  }
}

/// @nodoc
const $SubscriptionResponse = _$SubscriptionResponseTearOff();

/// @nodoc
mixin _$SubscriptionResponse {
  List<Subscription>? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionResponseCopyWith<SubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionResponseCopyWith<$Res> {
  factory $SubscriptionResponseCopyWith(SubscriptionResponse value,
          $Res Function(SubscriptionResponse) then) =
      _$SubscriptionResponseCopyWithImpl<$Res>;
  $Res call({List<Subscription>? data, String message, String status});
}

/// @nodoc
class _$SubscriptionResponseCopyWithImpl<$Res>
    implements $SubscriptionResponseCopyWith<$Res> {
  _$SubscriptionResponseCopyWithImpl(this._value, this._then);

  final SubscriptionResponse _value;
  // ignore: unused_field
  final $Res Function(SubscriptionResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionResponseCopyWith<$Res>
    implements $SubscriptionResponseCopyWith<$Res> {
  factory _$SubscriptionResponseCopyWith(_SubscriptionResponse value,
          $Res Function(_SubscriptionResponse) then) =
      __$SubscriptionResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Subscription>? data, String message, String status});
}

/// @nodoc
class __$SubscriptionResponseCopyWithImpl<$Res>
    extends _$SubscriptionResponseCopyWithImpl<$Res>
    implements _$SubscriptionResponseCopyWith<$Res> {
  __$SubscriptionResponseCopyWithImpl(
      _SubscriptionResponse _value, $Res Function(_SubscriptionResponse) _then)
      : super(_value, (v) => _then(v as _SubscriptionResponse));

  @override
  _SubscriptionResponse get _value => super._value as _SubscriptionResponse;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_SubscriptionResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionResponse
    with DiagnosticableTreeMixin
    implements _SubscriptionResponse {
  const _$_SubscriptionResponse(
      {this.data, required this.message, required this.status});

  factory _$_SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscriptionResponseFromJson(json);

  @override
  final List<Subscription>? data;
  @override
  final String message;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionResponse(data: $data, message: $message, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionResponse'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscriptionResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionResponseCopyWith<_SubscriptionResponse> get copyWith =>
      __$SubscriptionResponseCopyWithImpl<_SubscriptionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscriptionResponseToJson(this);
  }
}

abstract class _SubscriptionResponse implements SubscriptionResponse {
  const factory _SubscriptionResponse(
      {List<Subscription>? data,
      required String message,
      required String status}) = _$_SubscriptionResponse;

  factory _SubscriptionResponse.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionResponse.fromJson;

  @override
  List<Subscription>? get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionResponseCopyWith<_SubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
