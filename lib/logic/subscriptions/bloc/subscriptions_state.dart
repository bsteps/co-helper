part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsState with _$SubscriptionsState {
  @Assert('page >= 0')
  const factory SubscriptionsState.initial({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    @Default(1) int page,
    @Default([]) Iterable<Subscription> subscriptions,
  }) = SubscriptionInitial;

  @Assert('page >= 0')
  const factory SubscriptionsState.loading({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    @Default(1) int page,
    @Default([]) Iterable<Subscription> subscriptions,
  }) = SubscriptionLoading;

  @Assert('page >= 0')
  const factory SubscriptionsState.loaded({
    required bool hasReachedMax,
    @Default(false) bool isPaginated,
    required int page,
    required Iterable<Subscription> subscriptions,
    required Iterable<Subscription> currentSubscriptions,
  }) = SubscriptionLoaded;

  @Assert('page >= 0')
  const factory SubscriptionsState.error({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    @Default(1) int page,
    @Default([]) Iterable<Subscription> subscriptions,
    required String message,
    required int status,
  }) = SubscriptionError;

  @Assert('page >= 0')
  const factory SubscriptionsState.loadingMore({
    required bool hasReachedMax,
    @Default(false) bool isPaginated,
    required int page,
    required Iterable<Subscription> subscriptions,
    required Iterable<Subscription> currentSubscriptions,
  }) = SubscriptionLoadingMore;
}
