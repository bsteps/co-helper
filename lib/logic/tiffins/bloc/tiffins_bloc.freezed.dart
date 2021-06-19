// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tiffins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TiffinsEventTearOff {
  const _$TiffinsEventTearOff();

  TiffinLoad load() {
    return const TiffinLoad();
  }

  TiffinLoadMore loadMore() {
    return const TiffinLoadMore();
  }

  TiffinReload reload() {
    return const TiffinReload();
  }

  TiffinSearch search(String text) {
    return TiffinSearch(
      text,
    );
  }

  TiffinFilter filter({required String key, required String value}) {
    return TiffinFilter(
      key: key,
      value: value,
    );
  }

  TiffinFilterSelected filterSelected() {
    return const TiffinFilterSelected();
  }
}

/// @nodoc
const $TiffinsEvent = _$TiffinsEventTearOff();

/// @nodoc
mixin _$TiffinsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinsEventCopyWith<$Res> {
  factory $TiffinsEventCopyWith(
          TiffinsEvent value, $Res Function(TiffinsEvent) then) =
      _$TiffinsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TiffinsEventCopyWithImpl<$Res> implements $TiffinsEventCopyWith<$Res> {
  _$TiffinsEventCopyWithImpl(this._value, this._then);

  final TiffinsEvent _value;
  // ignore: unused_field
  final $Res Function(TiffinsEvent) _then;
}

/// @nodoc
abstract class $TiffinLoadCopyWith<$Res> {
  factory $TiffinLoadCopyWith(
          TiffinLoad value, $Res Function(TiffinLoad) then) =
      _$TiffinLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$TiffinLoadCopyWithImpl<$Res> extends _$TiffinsEventCopyWithImpl<$Res>
    implements $TiffinLoadCopyWith<$Res> {
  _$TiffinLoadCopyWithImpl(TiffinLoad _value, $Res Function(TiffinLoad) _then)
      : super(_value, (v) => _then(v as TiffinLoad));

  @override
  TiffinLoad get _value => super._value as TiffinLoad;
}

/// @nodoc

class _$TiffinLoad implements TiffinLoad {
  const _$TiffinLoad();

  @override
  String toString() {
    return 'TiffinsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TiffinLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TiffinLoad implements TiffinsEvent {
  const factory TiffinLoad() = _$TiffinLoad;
}

/// @nodoc
abstract class $TiffinLoadMoreCopyWith<$Res> {
  factory $TiffinLoadMoreCopyWith(
          TiffinLoadMore value, $Res Function(TiffinLoadMore) then) =
      _$TiffinLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class _$TiffinLoadMoreCopyWithImpl<$Res>
    extends _$TiffinsEventCopyWithImpl<$Res>
    implements $TiffinLoadMoreCopyWith<$Res> {
  _$TiffinLoadMoreCopyWithImpl(
      TiffinLoadMore _value, $Res Function(TiffinLoadMore) _then)
      : super(_value, (v) => _then(v as TiffinLoadMore));

  @override
  TiffinLoadMore get _value => super._value as TiffinLoadMore;
}

/// @nodoc

class _$TiffinLoadMore implements TiffinLoadMore {
  const _$TiffinLoadMore();

  @override
  String toString() {
    return 'TiffinsEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TiffinLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class TiffinLoadMore implements TiffinsEvent {
  const factory TiffinLoadMore() = _$TiffinLoadMore;
}

/// @nodoc
abstract class $TiffinReloadCopyWith<$Res> {
  factory $TiffinReloadCopyWith(
          TiffinReload value, $Res Function(TiffinReload) then) =
      _$TiffinReloadCopyWithImpl<$Res>;
}

/// @nodoc
class _$TiffinReloadCopyWithImpl<$Res> extends _$TiffinsEventCopyWithImpl<$Res>
    implements $TiffinReloadCopyWith<$Res> {
  _$TiffinReloadCopyWithImpl(
      TiffinReload _value, $Res Function(TiffinReload) _then)
      : super(_value, (v) => _then(v as TiffinReload));

  @override
  TiffinReload get _value => super._value as TiffinReload;
}

/// @nodoc

class _$TiffinReload implements TiffinReload {
  const _$TiffinReload();

  @override
  String toString() {
    return 'TiffinsEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TiffinReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class TiffinReload implements TiffinsEvent {
  const factory TiffinReload() = _$TiffinReload;
}

/// @nodoc
abstract class $TiffinSearchCopyWith<$Res> {
  factory $TiffinSearchCopyWith(
          TiffinSearch value, $Res Function(TiffinSearch) then) =
      _$TiffinSearchCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$TiffinSearchCopyWithImpl<$Res> extends _$TiffinsEventCopyWithImpl<$Res>
    implements $TiffinSearchCopyWith<$Res> {
  _$TiffinSearchCopyWithImpl(
      TiffinSearch _value, $Res Function(TiffinSearch) _then)
      : super(_value, (v) => _then(v as TiffinSearch));

  @override
  TiffinSearch get _value => super._value as TiffinSearch;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(TiffinSearch(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TiffinSearch implements TiffinSearch {
  const _$TiffinSearch(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'TiffinsEvent.search(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinSearch &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $TiffinSearchCopyWith<TiffinSearch> get copyWith =>
      _$TiffinSearchCopyWithImpl<TiffinSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class TiffinSearch implements TiffinsEvent {
  const factory TiffinSearch(String text) = _$TiffinSearch;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TiffinSearchCopyWith<TiffinSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinFilterCopyWith<$Res> {
  factory $TiffinFilterCopyWith(
          TiffinFilter value, $Res Function(TiffinFilter) then) =
      _$TiffinFilterCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$TiffinFilterCopyWithImpl<$Res> extends _$TiffinsEventCopyWithImpl<$Res>
    implements $TiffinFilterCopyWith<$Res> {
  _$TiffinFilterCopyWithImpl(
      TiffinFilter _value, $Res Function(TiffinFilter) _then)
      : super(_value, (v) => _then(v as TiffinFilter));

  @override
  TiffinFilter get _value => super._value as TiffinFilter;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(TiffinFilter(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TiffinFilter implements TiffinFilter {
  const _$TiffinFilter({required this.key, required this.value});

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'TiffinsEvent.filter(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinFilter &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $TiffinFilterCopyWith<TiffinFilter> get copyWith =>
      _$TiffinFilterCopyWithImpl<TiffinFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) {
    return filter(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class TiffinFilter implements TiffinsEvent {
  const factory TiffinFilter({required String key, required String value}) =
      _$TiffinFilter;

  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TiffinFilterCopyWith<TiffinFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinFilterSelectedCopyWith<$Res> {
  factory $TiffinFilterSelectedCopyWith(TiffinFilterSelected value,
          $Res Function(TiffinFilterSelected) then) =
      _$TiffinFilterSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TiffinFilterSelectedCopyWithImpl<$Res>
    extends _$TiffinsEventCopyWithImpl<$Res>
    implements $TiffinFilterSelectedCopyWith<$Res> {
  _$TiffinFilterSelectedCopyWithImpl(
      TiffinFilterSelected _value, $Res Function(TiffinFilterSelected) _then)
      : super(_value, (v) => _then(v as TiffinFilterSelected));

  @override
  TiffinFilterSelected get _value => super._value as TiffinFilterSelected;
}

/// @nodoc

class _$TiffinFilterSelected implements TiffinFilterSelected {
  const _$TiffinFilterSelected();

  @override
  String toString() {
    return 'TiffinsEvent.filterSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TiffinFilterSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(String text) search,
    required TResult Function(String key, String value) filter,
    required TResult Function() filterSelected,
  }) {
    return filterSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(String text)? search,
    TResult Function(String key, String value)? filter,
    TResult Function()? filterSelected,
    required TResult orElse(),
  }) {
    if (filterSelected != null) {
      return filterSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinLoad value) load,
    required TResult Function(TiffinLoadMore value) loadMore,
    required TResult Function(TiffinReload value) reload,
    required TResult Function(TiffinSearch value) search,
    required TResult Function(TiffinFilter value) filter,
    required TResult Function(TiffinFilterSelected value) filterSelected,
  }) {
    return filterSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinLoad value)? load,
    TResult Function(TiffinLoadMore value)? loadMore,
    TResult Function(TiffinReload value)? reload,
    TResult Function(TiffinSearch value)? search,
    TResult Function(TiffinFilter value)? filter,
    TResult Function(TiffinFilterSelected value)? filterSelected,
    required TResult orElse(),
  }) {
    if (filterSelected != null) {
      return filterSelected(this);
    }
    return orElse();
  }
}

abstract class TiffinFilterSelected implements TiffinsEvent {
  const factory TiffinFilterSelected() = _$TiffinFilterSelected;
}

/// @nodoc
class _$TiffinsStateTearOff {
  const _$TiffinsStateTearOff();

  TiffinInitial initial(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      String? search,
      Map<String, Set<String>>? filters,
      int page = 1,
      Iterable<Tiffin> tiffins = const []}) {
    return TiffinInitial(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      search: search,
      filters: filters,
      page: page,
      tiffins: tiffins,
    );
  }

  TiffinLoading loading(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      String? search,
      Map<String, Set<String>>? filters,
      int page = 1,
      Iterable<Tiffin> tiffins = const []}) {
    return TiffinLoading(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      search: search,
      filters: filters,
      page: page,
      tiffins: tiffins,
    );
  }

  TiffinSearchLoading searchLoading(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      String? search,
      Map<String, Set<String>>? filters,
      int page = 1,
      Iterable<Tiffin> tiffins = const []}) {
    return TiffinSearchLoading(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      search: search,
      filters: filters,
      page: page,
      tiffins: tiffins,
    );
  }

  TiffinLoaded loaded(
      {required bool hasReachedMax,
      bool isPaginated = false,
      String? search,
      Map<String, Set<String>>? filters,
      required int page,
      required Iterable<Tiffin> tiffins,
      required Iterable<Tiffin> currentTiffins}) {
    return TiffinLoaded(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      search: search,
      filters: filters,
      page: page,
      tiffins: tiffins,
      currentTiffins: currentTiffins,
    );
  }

  TiffinError error(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      String? search,
      Map<String, Set<String>>? filters,
      int page = 1,
      Iterable<Tiffin> tiffins = const [],
      required String message,
      required int status}) {
    return TiffinError(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      search: search,
      filters: filters,
      page: page,
      tiffins: tiffins,
      message: message,
      status: status,
    );
  }

  TiffinLoadingMore loadingMore(
      {required bool hasReachedMax,
      bool isPaginated = false,
      String? search,
      Map<String, Set<String>>? filters,
      required int page,
      required Iterable<Tiffin> tiffins,
      required Iterable<Tiffin> currentTiffins}) {
    return TiffinLoadingMore(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      search: search,
      filters: filters,
      page: page,
      tiffins: tiffins,
      currentTiffins: currentTiffins,
    );
  }
}

/// @nodoc
const $TiffinsState = _$TiffinsStateTearOff();

/// @nodoc
mixin _$TiffinsState {
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isPaginated => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TiffinsStateCopyWith<TiffinsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinsStateCopyWith<$Res> {
  factory $TiffinsStateCopyWith(
          TiffinsState value, $Res Function(TiffinsState) then) =
      _$TiffinsStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins});
}

/// @nodoc
class _$TiffinsStateCopyWithImpl<$Res> implements $TiffinsStateCopyWith<$Res> {
  _$TiffinsStateCopyWithImpl(this._value, this._then);

  final TiffinsState _value;
  // ignore: unused_field
  final $Res Function(TiffinsState) _then;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
  }) {
    return _then(_value.copyWith(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
    ));
  }
}

/// @nodoc
abstract class $TiffinInitialCopyWith<$Res>
    implements $TiffinsStateCopyWith<$Res> {
  factory $TiffinInitialCopyWith(
          TiffinInitial value, $Res Function(TiffinInitial) then) =
      _$TiffinInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins});
}

/// @nodoc
class _$TiffinInitialCopyWithImpl<$Res> extends _$TiffinsStateCopyWithImpl<$Res>
    implements $TiffinInitialCopyWith<$Res> {
  _$TiffinInitialCopyWithImpl(
      TiffinInitial _value, $Res Function(TiffinInitial) _then)
      : super(_value, (v) => _then(v as TiffinInitial));

  @override
  TiffinInitial get _value => super._value as TiffinInitial;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
  }) {
    return _then(TiffinInitial(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
    ));
  }
}

/// @nodoc

class _$TiffinInitial implements TiffinInitial {
  const _$TiffinInitial(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.search,
      this.filters,
      this.page = 1,
      this.tiffins = const []})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final String? search;
  @override
  final Map<String, Set<String>>? filters;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Tiffin> tiffins;

  @override
  String toString() {
    return 'TiffinsState.initial(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, search: $search, filters: $filters, page: $page, tiffins: $tiffins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinInitial &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.tiffins, tiffins) ||
                const DeepCollectionEquality().equals(other.tiffins, tiffins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(tiffins);

  @JsonKey(ignore: true)
  @override
  $TiffinInitialCopyWith<TiffinInitial> get copyWith =>
      _$TiffinInitialCopyWithImpl<TiffinInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) {
    return initial(hasReachedMax, isPaginated, search, filters, page, tiffins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          hasReachedMax, isPaginated, search, filters, page, tiffins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TiffinInitial implements TiffinsState {
  const factory TiffinInitial(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins}) = _$TiffinInitial;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  String? get search => throw _privateConstructorUsedError;
  @override
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TiffinInitialCopyWith<TiffinInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinLoadingCopyWith<$Res>
    implements $TiffinsStateCopyWith<$Res> {
  factory $TiffinLoadingCopyWith(
          TiffinLoading value, $Res Function(TiffinLoading) then) =
      _$TiffinLoadingCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins});
}

/// @nodoc
class _$TiffinLoadingCopyWithImpl<$Res> extends _$TiffinsStateCopyWithImpl<$Res>
    implements $TiffinLoadingCopyWith<$Res> {
  _$TiffinLoadingCopyWithImpl(
      TiffinLoading _value, $Res Function(TiffinLoading) _then)
      : super(_value, (v) => _then(v as TiffinLoading));

  @override
  TiffinLoading get _value => super._value as TiffinLoading;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
  }) {
    return _then(TiffinLoading(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
    ));
  }
}

/// @nodoc

class _$TiffinLoading implements TiffinLoading {
  const _$TiffinLoading(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.search,
      this.filters,
      this.page = 1,
      this.tiffins = const []})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final String? search;
  @override
  final Map<String, Set<String>>? filters;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Tiffin> tiffins;

  @override
  String toString() {
    return 'TiffinsState.loading(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, search: $search, filters: $filters, page: $page, tiffins: $tiffins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinLoading &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.tiffins, tiffins) ||
                const DeepCollectionEquality().equals(other.tiffins, tiffins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(tiffins);

  @JsonKey(ignore: true)
  @override
  $TiffinLoadingCopyWith<TiffinLoading> get copyWith =>
      _$TiffinLoadingCopyWithImpl<TiffinLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) {
    return loading(hasReachedMax, isPaginated, search, filters, page, tiffins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(
          hasReachedMax, isPaginated, search, filters, page, tiffins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TiffinLoading implements TiffinsState {
  const factory TiffinLoading(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins}) = _$TiffinLoading;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  String? get search => throw _privateConstructorUsedError;
  @override
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TiffinLoadingCopyWith<TiffinLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinSearchLoadingCopyWith<$Res>
    implements $TiffinsStateCopyWith<$Res> {
  factory $TiffinSearchLoadingCopyWith(
          TiffinSearchLoading value, $Res Function(TiffinSearchLoading) then) =
      _$TiffinSearchLoadingCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins});
}

/// @nodoc
class _$TiffinSearchLoadingCopyWithImpl<$Res>
    extends _$TiffinsStateCopyWithImpl<$Res>
    implements $TiffinSearchLoadingCopyWith<$Res> {
  _$TiffinSearchLoadingCopyWithImpl(
      TiffinSearchLoading _value, $Res Function(TiffinSearchLoading) _then)
      : super(_value, (v) => _then(v as TiffinSearchLoading));

  @override
  TiffinSearchLoading get _value => super._value as TiffinSearchLoading;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
  }) {
    return _then(TiffinSearchLoading(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
    ));
  }
}

/// @nodoc

class _$TiffinSearchLoading implements TiffinSearchLoading {
  const _$TiffinSearchLoading(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.search,
      this.filters,
      this.page = 1,
      this.tiffins = const []})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final String? search;
  @override
  final Map<String, Set<String>>? filters;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Tiffin> tiffins;

  @override
  String toString() {
    return 'TiffinsState.searchLoading(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, search: $search, filters: $filters, page: $page, tiffins: $tiffins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinSearchLoading &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.tiffins, tiffins) ||
                const DeepCollectionEquality().equals(other.tiffins, tiffins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(tiffins);

  @JsonKey(ignore: true)
  @override
  $TiffinSearchLoadingCopyWith<TiffinSearchLoading> get copyWith =>
      _$TiffinSearchLoadingCopyWithImpl<TiffinSearchLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) {
    return searchLoading(
        hasReachedMax, isPaginated, search, filters, page, tiffins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(
          hasReachedMax, isPaginated, search, filters, page, tiffins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class TiffinSearchLoading implements TiffinsState {
  const factory TiffinSearchLoading(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins}) = _$TiffinSearchLoading;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  String? get search => throw _privateConstructorUsedError;
  @override
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TiffinSearchLoadingCopyWith<TiffinSearchLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinLoadedCopyWith<$Res>
    implements $TiffinsStateCopyWith<$Res> {
  factory $TiffinLoadedCopyWith(
          TiffinLoaded value, $Res Function(TiffinLoaded) then) =
      _$TiffinLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins,
      Iterable<Tiffin> currentTiffins});
}

/// @nodoc
class _$TiffinLoadedCopyWithImpl<$Res> extends _$TiffinsStateCopyWithImpl<$Res>
    implements $TiffinLoadedCopyWith<$Res> {
  _$TiffinLoadedCopyWithImpl(
      TiffinLoaded _value, $Res Function(TiffinLoaded) _then)
      : super(_value, (v) => _then(v as TiffinLoaded));

  @override
  TiffinLoaded get _value => super._value as TiffinLoaded;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
    Object? currentTiffins = freezed,
  }) {
    return _then(TiffinLoaded(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
      currentTiffins: currentTiffins == freezed
          ? _value.currentTiffins
          : currentTiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
    ));
  }
}

/// @nodoc

class _$TiffinLoaded implements TiffinLoaded {
  const _$TiffinLoaded(
      {required this.hasReachedMax,
      this.isPaginated = false,
      this.search,
      this.filters,
      required this.page,
      required this.tiffins,
      required this.currentTiffins})
      : assert(page >= 0);

  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final String? search;
  @override
  final Map<String, Set<String>>? filters;
  @override
  final int page;
  @override
  final Iterable<Tiffin> tiffins;
  @override
  final Iterable<Tiffin> currentTiffins;

  @override
  String toString() {
    return 'TiffinsState.loaded(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, search: $search, filters: $filters, page: $page, tiffins: $tiffins, currentTiffins: $currentTiffins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinLoaded &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.tiffins, tiffins) ||
                const DeepCollectionEquality()
                    .equals(other.tiffins, tiffins)) &&
            (identical(other.currentTiffins, currentTiffins) ||
                const DeepCollectionEquality()
                    .equals(other.currentTiffins, currentTiffins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(tiffins) ^
      const DeepCollectionEquality().hash(currentTiffins);

  @JsonKey(ignore: true)
  @override
  $TiffinLoadedCopyWith<TiffinLoaded> get copyWith =>
      _$TiffinLoadedCopyWithImpl<TiffinLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) {
    return loaded(hasReachedMax, isPaginated, search, filters, page, tiffins,
        currentTiffins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hasReachedMax, isPaginated, search, filters, page, tiffins,
          currentTiffins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TiffinLoaded implements TiffinsState {
  const factory TiffinLoaded(
      {required bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      required int page,
      required Iterable<Tiffin> tiffins,
      required Iterable<Tiffin> currentTiffins}) = _$TiffinLoaded;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  String? get search => throw _privateConstructorUsedError;
  @override
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;
  Iterable<Tiffin> get currentTiffins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TiffinLoadedCopyWith<TiffinLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinErrorCopyWith<$Res>
    implements $TiffinsStateCopyWith<$Res> {
  factory $TiffinErrorCopyWith(
          TiffinError value, $Res Function(TiffinError) then) =
      _$TiffinErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins,
      String message,
      int status});
}

/// @nodoc
class _$TiffinErrorCopyWithImpl<$Res> extends _$TiffinsStateCopyWithImpl<$Res>
    implements $TiffinErrorCopyWith<$Res> {
  _$TiffinErrorCopyWithImpl(
      TiffinError _value, $Res Function(TiffinError) _then)
      : super(_value, (v) => _then(v as TiffinError));

  @override
  TiffinError get _value => super._value as TiffinError;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(TiffinError(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TiffinError implements TiffinError {
  const _$TiffinError(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.search,
      this.filters,
      this.page = 1,
      this.tiffins = const [],
      required this.message,
      required this.status})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final String? search;
  @override
  final Map<String, Set<String>>? filters;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Tiffin> tiffins;
  @override
  final String message;
  @override
  final int status;

  @override
  String toString() {
    return 'TiffinsState.error(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, search: $search, filters: $filters, page: $page, tiffins: $tiffins, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinError &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.tiffins, tiffins) ||
                const DeepCollectionEquality()
                    .equals(other.tiffins, tiffins)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(tiffins) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $TiffinErrorCopyWith<TiffinError> get copyWith =>
      _$TiffinErrorCopyWithImpl<TiffinError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) {
    return error(hasReachedMax, isPaginated, search, filters, page, tiffins,
        message, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(hasReachedMax, isPaginated, search, filters, page, tiffins,
          message, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TiffinError implements TiffinsState {
  const factory TiffinError(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins,
      required String message,
      required int status}) = _$TiffinError;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  String? get search => throw _privateConstructorUsedError;
  @override
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TiffinErrorCopyWith<TiffinError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiffinLoadingMoreCopyWith<$Res>
    implements $TiffinsStateCopyWith<$Res> {
  factory $TiffinLoadingMoreCopyWith(
          TiffinLoadingMore value, $Res Function(TiffinLoadingMore) then) =
      _$TiffinLoadingMoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      int page,
      Iterable<Tiffin> tiffins,
      Iterable<Tiffin> currentTiffins});
}

/// @nodoc
class _$TiffinLoadingMoreCopyWithImpl<$Res>
    extends _$TiffinsStateCopyWithImpl<$Res>
    implements $TiffinLoadingMoreCopyWith<$Res> {
  _$TiffinLoadingMoreCopyWithImpl(
      TiffinLoadingMore _value, $Res Function(TiffinLoadingMore) _then)
      : super(_value, (v) => _then(v as TiffinLoadingMore));

  @override
  TiffinLoadingMore get _value => super._value as TiffinLoadingMore;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? search = freezed,
    Object? filters = freezed,
    Object? page = freezed,
    Object? tiffins = freezed,
    Object? currentTiffins = freezed,
  }) {
    return _then(TiffinLoadingMore(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<String>>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tiffins: tiffins == freezed
          ? _value.tiffins
          : tiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
      currentTiffins: currentTiffins == freezed
          ? _value.currentTiffins
          : currentTiffins // ignore: cast_nullable_to_non_nullable
              as Iterable<Tiffin>,
    ));
  }
}

/// @nodoc

class _$TiffinLoadingMore implements TiffinLoadingMore {
  const _$TiffinLoadingMore(
      {required this.hasReachedMax,
      this.isPaginated = false,
      this.search,
      this.filters,
      required this.page,
      required this.tiffins,
      required this.currentTiffins})
      : assert(page >= 0);

  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final String? search;
  @override
  final Map<String, Set<String>>? filters;
  @override
  final int page;
  @override
  final Iterable<Tiffin> tiffins;
  @override
  final Iterable<Tiffin> currentTiffins;

  @override
  String toString() {
    return 'TiffinsState.loadingMore(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, search: $search, filters: $filters, page: $page, tiffins: $tiffins, currentTiffins: $currentTiffins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TiffinLoadingMore &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.tiffins, tiffins) ||
                const DeepCollectionEquality()
                    .equals(other.tiffins, tiffins)) &&
            (identical(other.currentTiffins, currentTiffins) ||
                const DeepCollectionEquality()
                    .equals(other.currentTiffins, currentTiffins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(tiffins) ^
      const DeepCollectionEquality().hash(currentTiffins);

  @JsonKey(ignore: true)
  @override
  $TiffinLoadingMoreCopyWith<TiffinLoadingMore> get copyWith =>
      _$TiffinLoadingMoreCopyWithImpl<TiffinLoadingMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        initial,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)
        searchLoading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loaded,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)
        loadingMore,
  }) {
    return loadingMore(hasReachedMax, isPaginated, search, filters, page,
        tiffins, currentTiffins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        initial,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins)?
        searchLoading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loaded,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            String message,
            int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            String? search,
            Map<String, Set<String>>? filters,
            int page,
            Iterable<Tiffin> tiffins,
            Iterable<Tiffin> currentTiffins)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(hasReachedMax, isPaginated, search, filters, page,
          tiffins, currentTiffins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TiffinInitial value) initial,
    required TResult Function(TiffinLoading value) loading,
    required TResult Function(TiffinSearchLoading value) searchLoading,
    required TResult Function(TiffinLoaded value) loaded,
    required TResult Function(TiffinError value) error,
    required TResult Function(TiffinLoadingMore value) loadingMore,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TiffinInitial value)? initial,
    TResult Function(TiffinLoading value)? loading,
    TResult Function(TiffinSearchLoading value)? searchLoading,
    TResult Function(TiffinLoaded value)? loaded,
    TResult Function(TiffinError value)? error,
    TResult Function(TiffinLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class TiffinLoadingMore implements TiffinsState {
  const factory TiffinLoadingMore(
      {required bool hasReachedMax,
      bool isPaginated,
      String? search,
      Map<String, Set<String>>? filters,
      required int page,
      required Iterable<Tiffin> tiffins,
      required Iterable<Tiffin> currentTiffins}) = _$TiffinLoadingMore;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  String? get search => throw _privateConstructorUsedError;
  @override
  Map<String, Set<String>>? get filters => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Tiffin> get tiffins => throw _privateConstructorUsedError;
  Iterable<Tiffin> get currentTiffins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TiffinLoadingMoreCopyWith<TiffinLoadingMore> get copyWith =>
      throw _privateConstructorUsedError;
}
