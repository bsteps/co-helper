// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscriptions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionsEventTearOff {
  const _$SubscriptionsEventTearOff();

  SubscriptionLoad load() {
    return const SubscriptionLoad();
  }

  SubscriptionLoadMore loadMore() {
    return const SubscriptionLoadMore();
  }

  SubscriptionReload reload() {
    return const SubscriptionReload();
  }

  SubscriptionUnsubscribe unsubscribe({required Subscription subscription}) {
    return SubscriptionUnsubscribe(
      subscription: subscription,
    );
  }
}

/// @nodoc
const $SubscriptionsEvent = _$SubscriptionsEventTearOff();

/// @nodoc
mixin _$SubscriptionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(Subscription subscription) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(Subscription subscription)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionLoad value) load,
    required TResult Function(SubscriptionLoadMore value) loadMore,
    required TResult Function(SubscriptionReload value) reload,
    required TResult Function(SubscriptionUnsubscribe value) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionLoad value)? load,
    TResult Function(SubscriptionLoadMore value)? loadMore,
    TResult Function(SubscriptionReload value)? reload,
    TResult Function(SubscriptionUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsEventCopyWith<$Res> {
  factory $SubscriptionsEventCopyWith(
          SubscriptionsEvent value, $Res Function(SubscriptionsEvent) then) =
      _$SubscriptionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionsEventCopyWithImpl<$Res>
    implements $SubscriptionsEventCopyWith<$Res> {
  _$SubscriptionsEventCopyWithImpl(this._value, this._then);

  final SubscriptionsEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionsEvent) _then;
}

/// @nodoc
abstract class $SubscriptionLoadCopyWith<$Res> {
  factory $SubscriptionLoadCopyWith(
          SubscriptionLoad value, $Res Function(SubscriptionLoad) then) =
      _$SubscriptionLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionLoadCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements $SubscriptionLoadCopyWith<$Res> {
  _$SubscriptionLoadCopyWithImpl(
      SubscriptionLoad _value, $Res Function(SubscriptionLoad) _then)
      : super(_value, (v) => _then(v as SubscriptionLoad));

  @override
  SubscriptionLoad get _value => super._value as SubscriptionLoad;
}

/// @nodoc

class _$SubscriptionLoad implements SubscriptionLoad {
  const _$SubscriptionLoad();

  @override
  String toString() {
    return 'SubscriptionsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubscriptionLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(Subscription subscription) unsubscribe,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(Subscription subscription)? unsubscribe,
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
    required TResult Function(SubscriptionLoad value) load,
    required TResult Function(SubscriptionLoadMore value) loadMore,
    required TResult Function(SubscriptionReload value) reload,
    required TResult Function(SubscriptionUnsubscribe value) unsubscribe,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionLoad value)? load,
    TResult Function(SubscriptionLoadMore value)? loadMore,
    TResult Function(SubscriptionReload value)? reload,
    TResult Function(SubscriptionUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class SubscriptionLoad implements SubscriptionsEvent {
  const factory SubscriptionLoad() = _$SubscriptionLoad;
}

/// @nodoc
abstract class $SubscriptionLoadMoreCopyWith<$Res> {
  factory $SubscriptionLoadMoreCopyWith(SubscriptionLoadMore value,
          $Res Function(SubscriptionLoadMore) then) =
      _$SubscriptionLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionLoadMoreCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements $SubscriptionLoadMoreCopyWith<$Res> {
  _$SubscriptionLoadMoreCopyWithImpl(
      SubscriptionLoadMore _value, $Res Function(SubscriptionLoadMore) _then)
      : super(_value, (v) => _then(v as SubscriptionLoadMore));

  @override
  SubscriptionLoadMore get _value => super._value as SubscriptionLoadMore;
}

/// @nodoc

class _$SubscriptionLoadMore implements SubscriptionLoadMore {
  const _$SubscriptionLoadMore();

  @override
  String toString() {
    return 'SubscriptionsEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubscriptionLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(Subscription subscription) unsubscribe,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(Subscription subscription)? unsubscribe,
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
    required TResult Function(SubscriptionLoad value) load,
    required TResult Function(SubscriptionLoadMore value) loadMore,
    required TResult Function(SubscriptionReload value) reload,
    required TResult Function(SubscriptionUnsubscribe value) unsubscribe,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionLoad value)? load,
    TResult Function(SubscriptionLoadMore value)? loadMore,
    TResult Function(SubscriptionReload value)? reload,
    TResult Function(SubscriptionUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class SubscriptionLoadMore implements SubscriptionsEvent {
  const factory SubscriptionLoadMore() = _$SubscriptionLoadMore;
}

/// @nodoc
abstract class $SubscriptionReloadCopyWith<$Res> {
  factory $SubscriptionReloadCopyWith(
          SubscriptionReload value, $Res Function(SubscriptionReload) then) =
      _$SubscriptionReloadCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionReloadCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements $SubscriptionReloadCopyWith<$Res> {
  _$SubscriptionReloadCopyWithImpl(
      SubscriptionReload _value, $Res Function(SubscriptionReload) _then)
      : super(_value, (v) => _then(v as SubscriptionReload));

  @override
  SubscriptionReload get _value => super._value as SubscriptionReload;
}

/// @nodoc

class _$SubscriptionReload implements SubscriptionReload {
  const _$SubscriptionReload();

  @override
  String toString() {
    return 'SubscriptionsEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubscriptionReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(Subscription subscription) unsubscribe,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(Subscription subscription)? unsubscribe,
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
    required TResult Function(SubscriptionLoad value) load,
    required TResult Function(SubscriptionLoadMore value) loadMore,
    required TResult Function(SubscriptionReload value) reload,
    required TResult Function(SubscriptionUnsubscribe value) unsubscribe,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionLoad value)? load,
    TResult Function(SubscriptionLoadMore value)? loadMore,
    TResult Function(SubscriptionReload value)? reload,
    TResult Function(SubscriptionUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class SubscriptionReload implements SubscriptionsEvent {
  const factory SubscriptionReload() = _$SubscriptionReload;
}

/// @nodoc
abstract class $SubscriptionUnsubscribeCopyWith<$Res> {
  factory $SubscriptionUnsubscribeCopyWith(SubscriptionUnsubscribe value,
          $Res Function(SubscriptionUnsubscribe) then) =
      _$SubscriptionUnsubscribeCopyWithImpl<$Res>;
  $Res call({Subscription subscription});

  $SubscriptionCopyWith<$Res> get subscription;
}

/// @nodoc
class _$SubscriptionUnsubscribeCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res>
    implements $SubscriptionUnsubscribeCopyWith<$Res> {
  _$SubscriptionUnsubscribeCopyWithImpl(SubscriptionUnsubscribe _value,
      $Res Function(SubscriptionUnsubscribe) _then)
      : super(_value, (v) => _then(v as SubscriptionUnsubscribe));

  @override
  SubscriptionUnsubscribe get _value => super._value as SubscriptionUnsubscribe;

  @override
  $Res call({
    Object? subscription = freezed,
  }) {
    return _then(SubscriptionUnsubscribe(
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription,
    ));
  }

  @override
  $SubscriptionCopyWith<$Res> get subscription {
    return $SubscriptionCopyWith<$Res>(_value.subscription, (value) {
      return _then(_value.copyWith(subscription: value));
    });
  }
}

/// @nodoc

class _$SubscriptionUnsubscribe implements SubscriptionUnsubscribe {
  const _$SubscriptionUnsubscribe({required this.subscription});

  @override
  final Subscription subscription;

  @override
  String toString() {
    return 'SubscriptionsEvent.unsubscribe(subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionUnsubscribe &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subscription);

  @JsonKey(ignore: true)
  @override
  $SubscriptionUnsubscribeCopyWith<SubscriptionUnsubscribe> get copyWith =>
      _$SubscriptionUnsubscribeCopyWithImpl<SubscriptionUnsubscribe>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() reload,
    required TResult Function(Subscription subscription) unsubscribe,
  }) {
    return unsubscribe(subscription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? reload,
    TResult Function(Subscription subscription)? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(subscription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionLoad value) load,
    required TResult Function(SubscriptionLoadMore value) loadMore,
    required TResult Function(SubscriptionReload value) reload,
    required TResult Function(SubscriptionUnsubscribe value) unsubscribe,
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionLoad value)? load,
    TResult Function(SubscriptionLoadMore value)? loadMore,
    TResult Function(SubscriptionReload value)? reload,
    TResult Function(SubscriptionUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(this);
    }
    return orElse();
  }
}

abstract class SubscriptionUnsubscribe implements SubscriptionsEvent {
  const factory SubscriptionUnsubscribe({required Subscription subscription}) =
      _$SubscriptionUnsubscribe;

  Subscription get subscription => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionUnsubscribeCopyWith<SubscriptionUnsubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubscriptionsStateTearOff {
  const _$SubscriptionsStateTearOff();

  SubscriptionInitial initial(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      int page = 1,
      Iterable<Subscription> subscriptions = const []}) {
    return SubscriptionInitial(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      page: page,
      subscriptions: subscriptions,
    );
  }

  SubscriptionLoading loading(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      int page = 1,
      Iterable<Subscription> subscriptions = const []}) {
    return SubscriptionLoading(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      page: page,
      subscriptions: subscriptions,
    );
  }

  SubscriptionLoaded loaded(
      {required bool hasReachedMax,
      bool isPaginated = false,
      required int page,
      required Iterable<Subscription> subscriptions,
      required Iterable<Subscription> currentSubscriptions}) {
    return SubscriptionLoaded(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      page: page,
      subscriptions: subscriptions,
      currentSubscriptions: currentSubscriptions,
    );
  }

  SubscriptionError error(
      {bool hasReachedMax = false,
      bool isPaginated = false,
      int page = 1,
      Iterable<Subscription> subscriptions = const [],
      required String message,
      required int status}) {
    return SubscriptionError(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      page: page,
      subscriptions: subscriptions,
      message: message,
      status: status,
    );
  }

  SubscriptionLoadingMore loadingMore(
      {required bool hasReachedMax,
      bool isPaginated = false,
      required int page,
      required Iterable<Subscription> subscriptions,
      required Iterable<Subscription> currentSubscriptions}) {
    return SubscriptionLoadingMore(
      hasReachedMax: hasReachedMax,
      isPaginated: isPaginated,
      page: page,
      subscriptions: subscriptions,
      currentSubscriptions: currentSubscriptions,
    );
  }
}

/// @nodoc
const $SubscriptionsState = _$SubscriptionsStateTearOff();

/// @nodoc
mixin _$SubscriptionsState {
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isPaginated => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Iterable<Subscription> get subscriptions =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        initial,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loaded,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        initial,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loaded,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionInitial value) initial,
    required TResult Function(SubscriptionLoading value) loading,
    required TResult Function(SubscriptionLoaded value) loaded,
    required TResult Function(SubscriptionError value) error,
    required TResult Function(SubscriptionLoadingMore value) loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionInitial value)? initial,
    TResult Function(SubscriptionLoading value)? loading,
    TResult Function(SubscriptionLoaded value)? loaded,
    TResult Function(SubscriptionError value)? error,
    TResult Function(SubscriptionLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionsStateCopyWith<SubscriptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionsStateCopyWith(
          SubscriptionsState value, $Res Function(SubscriptionsState) then) =
      _$SubscriptionsStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions});
}

/// @nodoc
class _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  _$SubscriptionsStateCopyWithImpl(this._value, this._then);

  final SubscriptionsState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionsState) _then;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? page = freezed,
    Object? subscriptions = freezed,
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
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
    ));
  }
}

/// @nodoc
abstract class $SubscriptionInitialCopyWith<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionInitialCopyWith(
          SubscriptionInitial value, $Res Function(SubscriptionInitial) then) =
      _$SubscriptionInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions});
}

/// @nodoc
class _$SubscriptionInitialCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionInitialCopyWith<$Res> {
  _$SubscriptionInitialCopyWithImpl(
      SubscriptionInitial _value, $Res Function(SubscriptionInitial) _then)
      : super(_value, (v) => _then(v as SubscriptionInitial));

  @override
  SubscriptionInitial get _value => super._value as SubscriptionInitial;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? page = freezed,
    Object? subscriptions = freezed,
  }) {
    return _then(SubscriptionInitial(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
    ));
  }
}

/// @nodoc

class _$SubscriptionInitial implements SubscriptionInitial {
  const _$SubscriptionInitial(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.page = 1,
      this.subscriptions = const []})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Subscription> subscriptions;

  @override
  String toString() {
    return 'SubscriptionsState.initial(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, page: $page, subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionInitial &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(subscriptions);

  @JsonKey(ignore: true)
  @override
  $SubscriptionInitialCopyWith<SubscriptionInitial> get copyWith =>
      _$SubscriptionInitialCopyWithImpl<SubscriptionInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        initial,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loaded,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loadingMore,
  }) {
    return initial(hasReachedMax, isPaginated, page, subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        initial,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loaded,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hasReachedMax, isPaginated, page, subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionInitial value) initial,
    required TResult Function(SubscriptionLoading value) loading,
    required TResult Function(SubscriptionLoaded value) loaded,
    required TResult Function(SubscriptionError value) error,
    required TResult Function(SubscriptionLoadingMore value) loadingMore,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionInitial value)? initial,
    TResult Function(SubscriptionLoading value)? loading,
    TResult Function(SubscriptionLoaded value)? loaded,
    TResult Function(SubscriptionError value)? error,
    TResult Function(SubscriptionLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SubscriptionInitial implements SubscriptionsState {
  const factory SubscriptionInitial(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions}) = _$SubscriptionInitial;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Subscription> get subscriptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubscriptionInitialCopyWith<SubscriptionInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionLoadingCopyWith<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionLoadingCopyWith(
          SubscriptionLoading value, $Res Function(SubscriptionLoading) then) =
      _$SubscriptionLoadingCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions});
}

/// @nodoc
class _$SubscriptionLoadingCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionLoadingCopyWith<$Res> {
  _$SubscriptionLoadingCopyWithImpl(
      SubscriptionLoading _value, $Res Function(SubscriptionLoading) _then)
      : super(_value, (v) => _then(v as SubscriptionLoading));

  @override
  SubscriptionLoading get _value => super._value as SubscriptionLoading;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? page = freezed,
    Object? subscriptions = freezed,
  }) {
    return _then(SubscriptionLoading(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
    ));
  }
}

/// @nodoc

class _$SubscriptionLoading implements SubscriptionLoading {
  const _$SubscriptionLoading(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.page = 1,
      this.subscriptions = const []})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Subscription> subscriptions;

  @override
  String toString() {
    return 'SubscriptionsState.loading(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, page: $page, subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionLoading &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(subscriptions);

  @JsonKey(ignore: true)
  @override
  $SubscriptionLoadingCopyWith<SubscriptionLoading> get copyWith =>
      _$SubscriptionLoadingCopyWithImpl<SubscriptionLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        initial,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loaded,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loadingMore,
  }) {
    return loading(hasReachedMax, isPaginated, page, subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        initial,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loaded,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(hasReachedMax, isPaginated, page, subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionInitial value) initial,
    required TResult Function(SubscriptionLoading value) loading,
    required TResult Function(SubscriptionLoaded value) loaded,
    required TResult Function(SubscriptionError value) error,
    required TResult Function(SubscriptionLoadingMore value) loadingMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionInitial value)? initial,
    TResult Function(SubscriptionLoading value)? loading,
    TResult Function(SubscriptionLoaded value)? loaded,
    TResult Function(SubscriptionError value)? error,
    TResult Function(SubscriptionLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SubscriptionLoading implements SubscriptionsState {
  const factory SubscriptionLoading(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions}) = _$SubscriptionLoading;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Subscription> get subscriptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubscriptionLoadingCopyWith<SubscriptionLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionLoadedCopyWith<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionLoadedCopyWith(
          SubscriptionLoaded value, $Res Function(SubscriptionLoaded) then) =
      _$SubscriptionLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions,
      Iterable<Subscription> currentSubscriptions});
}

/// @nodoc
class _$SubscriptionLoadedCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionLoadedCopyWith<$Res> {
  _$SubscriptionLoadedCopyWithImpl(
      SubscriptionLoaded _value, $Res Function(SubscriptionLoaded) _then)
      : super(_value, (v) => _then(v as SubscriptionLoaded));

  @override
  SubscriptionLoaded get _value => super._value as SubscriptionLoaded;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? page = freezed,
    Object? subscriptions = freezed,
    Object? currentSubscriptions = freezed,
  }) {
    return _then(SubscriptionLoaded(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
      currentSubscriptions: currentSubscriptions == freezed
          ? _value.currentSubscriptions
          : currentSubscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
    ));
  }
}

/// @nodoc

class _$SubscriptionLoaded implements SubscriptionLoaded {
  const _$SubscriptionLoaded(
      {required this.hasReachedMax,
      this.isPaginated = false,
      required this.page,
      required this.subscriptions,
      required this.currentSubscriptions})
      : assert(page >= 0);

  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final int page;
  @override
  final Iterable<Subscription> subscriptions;
  @override
  final Iterable<Subscription> currentSubscriptions;

  @override
  String toString() {
    return 'SubscriptionsState.loaded(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, page: $page, subscriptions: $subscriptions, currentSubscriptions: $currentSubscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionLoaded &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)) &&
            (identical(other.currentSubscriptions, currentSubscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.currentSubscriptions, currentSubscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(subscriptions) ^
      const DeepCollectionEquality().hash(currentSubscriptions);

  @JsonKey(ignore: true)
  @override
  $SubscriptionLoadedCopyWith<SubscriptionLoaded> get copyWith =>
      _$SubscriptionLoadedCopyWithImpl<SubscriptionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        initial,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loaded,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loadingMore,
  }) {
    return loaded(
        hasReachedMax, isPaginated, page, subscriptions, currentSubscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        initial,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loaded,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hasReachedMax, isPaginated, page, subscriptions,
          currentSubscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionInitial value) initial,
    required TResult Function(SubscriptionLoading value) loading,
    required TResult Function(SubscriptionLoaded value) loaded,
    required TResult Function(SubscriptionError value) error,
    required TResult Function(SubscriptionLoadingMore value) loadingMore,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionInitial value)? initial,
    TResult Function(SubscriptionLoading value)? loading,
    TResult Function(SubscriptionLoaded value)? loaded,
    TResult Function(SubscriptionError value)? error,
    TResult Function(SubscriptionLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SubscriptionLoaded implements SubscriptionsState {
  const factory SubscriptionLoaded(
          {required bool hasReachedMax,
          bool isPaginated,
          required int page,
          required Iterable<Subscription> subscriptions,
          required Iterable<Subscription> currentSubscriptions}) =
      _$SubscriptionLoaded;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Subscription> get subscriptions =>
      throw _privateConstructorUsedError;
  Iterable<Subscription> get currentSubscriptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubscriptionLoadedCopyWith<SubscriptionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionErrorCopyWith<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionErrorCopyWith(
          SubscriptionError value, $Res Function(SubscriptionError) then) =
      _$SubscriptionErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions,
      String message,
      int status});
}

/// @nodoc
class _$SubscriptionErrorCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionErrorCopyWith<$Res> {
  _$SubscriptionErrorCopyWithImpl(
      SubscriptionError _value, $Res Function(SubscriptionError) _then)
      : super(_value, (v) => _then(v as SubscriptionError));

  @override
  SubscriptionError get _value => super._value as SubscriptionError;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? page = freezed,
    Object? subscriptions = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(SubscriptionError(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
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

class _$SubscriptionError implements SubscriptionError {
  const _$SubscriptionError(
      {this.hasReachedMax = false,
      this.isPaginated = false,
      this.page = 1,
      this.subscriptions = const [],
      required this.message,
      required this.status})
      : assert(page >= 0);

  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final Iterable<Subscription> subscriptions;
  @override
  final String message;
  @override
  final int status;

  @override
  String toString() {
    return 'SubscriptionsState.error(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, page: $page, subscriptions: $subscriptions, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionError &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)) &&
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
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(subscriptions) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $SubscriptionErrorCopyWith<SubscriptionError> get copyWith =>
      _$SubscriptionErrorCopyWithImpl<SubscriptionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        initial,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loaded,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loadingMore,
  }) {
    return error(
        hasReachedMax, isPaginated, page, subscriptions, message, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        initial,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loaded,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(
          hasReachedMax, isPaginated, page, subscriptions, message, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionInitial value) initial,
    required TResult Function(SubscriptionLoading value) loading,
    required TResult Function(SubscriptionLoaded value) loaded,
    required TResult Function(SubscriptionError value) error,
    required TResult Function(SubscriptionLoadingMore value) loadingMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionInitial value)? initial,
    TResult Function(SubscriptionLoading value)? loading,
    TResult Function(SubscriptionLoaded value)? loaded,
    TResult Function(SubscriptionError value)? error,
    TResult Function(SubscriptionLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SubscriptionError implements SubscriptionsState {
  const factory SubscriptionError(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions,
      required String message,
      required int status}) = _$SubscriptionError;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Subscription> get subscriptions =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubscriptionErrorCopyWith<SubscriptionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionLoadingMoreCopyWith<$Res>
    implements $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionLoadingMoreCopyWith(SubscriptionLoadingMore value,
          $Res Function(SubscriptionLoadingMore) then) =
      _$SubscriptionLoadingMoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isPaginated,
      int page,
      Iterable<Subscription> subscriptions,
      Iterable<Subscription> currentSubscriptions});
}

/// @nodoc
class _$SubscriptionLoadingMoreCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res>
    implements $SubscriptionLoadingMoreCopyWith<$Res> {
  _$SubscriptionLoadingMoreCopyWithImpl(SubscriptionLoadingMore _value,
      $Res Function(SubscriptionLoadingMore) _then)
      : super(_value, (v) => _then(v as SubscriptionLoadingMore));

  @override
  SubscriptionLoadingMore get _value => super._value as SubscriptionLoadingMore;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isPaginated = freezed,
    Object? page = freezed,
    Object? subscriptions = freezed,
    Object? currentSubscriptions = freezed,
  }) {
    return _then(SubscriptionLoadingMore(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: isPaginated == freezed
          ? _value.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
      currentSubscriptions: currentSubscriptions == freezed
          ? _value.currentSubscriptions
          : currentSubscriptions // ignore: cast_nullable_to_non_nullable
              as Iterable<Subscription>,
    ));
  }
}

/// @nodoc

class _$SubscriptionLoadingMore implements SubscriptionLoadingMore {
  const _$SubscriptionLoadingMore(
      {required this.hasReachedMax,
      this.isPaginated = false,
      required this.page,
      required this.subscriptions,
      required this.currentSubscriptions})
      : assert(page >= 0);

  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaginated;
  @override
  final int page;
  @override
  final Iterable<Subscription> subscriptions;
  @override
  final Iterable<Subscription> currentSubscriptions;

  @override
  String toString() {
    return 'SubscriptionsState.loadingMore(hasReachedMax: $hasReachedMax, isPaginated: $isPaginated, page: $page, subscriptions: $subscriptions, currentSubscriptions: $currentSubscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionLoadingMore &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isPaginated, isPaginated) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginated, isPaginated)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)) &&
            (identical(other.currentSubscriptions, currentSubscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.currentSubscriptions, currentSubscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isPaginated) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(subscriptions) ^
      const DeepCollectionEquality().hash(currentSubscriptions);

  @JsonKey(ignore: true)
  @override
  $SubscriptionLoadingMoreCopyWith<SubscriptionLoadingMore> get copyWith =>
      _$SubscriptionLoadingMoreCopyWithImpl<SubscriptionLoadingMore>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        initial,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)
        loading,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loaded,
    required TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)
        error,
    required TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)
        loadingMore,
  }) {
    return loadingMore(
        hasReachedMax, isPaginated, page, subscriptions, currentSubscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        initial,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions)?
        loading,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loaded,
    TResult Function(bool hasReachedMax, bool isPaginated, int page,
            Iterable<Subscription> subscriptions, String message, int status)?
        error,
    TResult Function(
            bool hasReachedMax,
            bool isPaginated,
            int page,
            Iterable<Subscription> subscriptions,
            Iterable<Subscription> currentSubscriptions)?
        loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(hasReachedMax, isPaginated, page, subscriptions,
          currentSubscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionInitial value) initial,
    required TResult Function(SubscriptionLoading value) loading,
    required TResult Function(SubscriptionLoaded value) loaded,
    required TResult Function(SubscriptionError value) error,
    required TResult Function(SubscriptionLoadingMore value) loadingMore,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionInitial value)? initial,
    TResult Function(SubscriptionLoading value)? loading,
    TResult Function(SubscriptionLoaded value)? loaded,
    TResult Function(SubscriptionError value)? error,
    TResult Function(SubscriptionLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class SubscriptionLoadingMore implements SubscriptionsState {
  const factory SubscriptionLoadingMore(
          {required bool hasReachedMax,
          bool isPaginated,
          required int page,
          required Iterable<Subscription> subscriptions,
          required Iterable<Subscription> currentSubscriptions}) =
      _$SubscriptionLoadingMore;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isPaginated => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Iterable<Subscription> get subscriptions =>
      throw _privateConstructorUsedError;
  Iterable<Subscription> get currentSubscriptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubscriptionLoadingMoreCopyWith<SubscriptionLoadingMore> get copyWith =>
      throw _privateConstructorUsedError;
}
