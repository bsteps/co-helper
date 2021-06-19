// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'TiffinResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TiffinResponse _$TiffinResponseFromJson(Map<String, dynamic> json) {
  return _TiffinResponse.fromJson(json);
}

/// @nodoc
class _$TiffinResponseTearOff {
  const _$TiffinResponseTearOff();

  _TiffinResponse call(
      {List<Tiffin>? data, required String message, required String status}) {
    return _TiffinResponse(
      data: data,
      message: message,
      status: status,
    );
  }

  TiffinResponse fromJson(Map<String, Object> json) {
    return TiffinResponse.fromJson(json);
  }
}

/// @nodoc
const $TiffinResponse = _$TiffinResponseTearOff();

/// @nodoc
mixin _$TiffinResponse {
  List<Tiffin>? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TiffinResponseCopyWith<TiffinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinResponseCopyWith<$Res> {
  factory $TiffinResponseCopyWith(
          TiffinResponse value, $Res Function(TiffinResponse) then) =
      _$TiffinResponseCopyWithImpl<$Res>;
  $Res call({List<Tiffin>? data, String message, String status});
}

/// @nodoc
class _$TiffinResponseCopyWithImpl<$Res>
    implements $TiffinResponseCopyWith<$Res> {
  _$TiffinResponseCopyWithImpl(this._value, this._then);

  final TiffinResponse _value;
  // ignore: unused_field
  final $Res Function(TiffinResponse) _then;

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
              as List<Tiffin>?,
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
abstract class _$TiffinResponseCopyWith<$Res>
    implements $TiffinResponseCopyWith<$Res> {
  factory _$TiffinResponseCopyWith(
          _TiffinResponse value, $Res Function(_TiffinResponse) then) =
      __$TiffinResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Tiffin>? data, String message, String status});
}

/// @nodoc
class __$TiffinResponseCopyWithImpl<$Res>
    extends _$TiffinResponseCopyWithImpl<$Res>
    implements _$TiffinResponseCopyWith<$Res> {
  __$TiffinResponseCopyWithImpl(
      _TiffinResponse _value, $Res Function(_TiffinResponse) _then)
      : super(_value, (v) => _then(v as _TiffinResponse));

  @override
  _TiffinResponse get _value => super._value as _TiffinResponse;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_TiffinResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Tiffin>?,
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
class _$_TiffinResponse
    with DiagnosticableTreeMixin
    implements _TiffinResponse {
  const _$_TiffinResponse(
      {this.data, required this.message, required this.status});

  factory _$_TiffinResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TiffinResponseFromJson(json);

  @override
  final List<Tiffin>? data;
  @override
  final String message;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TiffinResponse(data: $data, message: $message, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TiffinResponse'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TiffinResponse &&
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
  _$TiffinResponseCopyWith<_TiffinResponse> get copyWith =>
      __$TiffinResponseCopyWithImpl<_TiffinResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TiffinResponseToJson(this);
  }
}

abstract class _TiffinResponse implements TiffinResponse {
  const factory _TiffinResponse(
      {List<Tiffin>? data,
      required String message,
      required String status}) = _$_TiffinResponse;

  factory _TiffinResponse.fromJson(Map<String, dynamic> json) =
      _$_TiffinResponse.fromJson;

  @override
  List<Tiffin>? get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TiffinResponseCopyWith<_TiffinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
