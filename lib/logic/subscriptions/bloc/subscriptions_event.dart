part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsEvent with _$SubscriptionsEvent {
  const factory SubscriptionsEvent.load() = SubscriptionLoad;
  const factory SubscriptionsEvent.loadMore() = SubscriptionLoadMore;
  const factory SubscriptionsEvent.reload() = SubscriptionReload;
  const factory SubscriptionsEvent.unsubscribe({ required Subscription subscription }) = SubscriptionUnsubscribe;
}
