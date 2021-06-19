import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/responses/CommonResponse.dart';
import 'package:co_helper/main.dart';
import 'package:co_helper/utility/services/firebase_messaging_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:co_helper/data/models/Subscription.dart';
import 'package:co_helper/data/repositories/subscriptions_respository/subscriptions_repository_contract.dart';
import 'package:rxdart/rxdart.dart';

part 'subscriptions_bloc.freezed.dart';
part 'subscriptions_event.dart';
part 'subscriptions_state.dart';

class SubscriptionsBloc extends Bloc<SubscriptionsEvent, SubscriptionsState> {
  final SubscriptionsRepositoryContract repository;

  SubscriptionsBloc({
    required this.repository,
    required isPaginated,
  }) : super(SubscriptionsState.initial(isPaginated: isPaginated));

  @override
  void onTransition(
      Transition<SubscriptionsEvent, SubscriptionsState> transition) {
    print(transition);
    print('\n');
    super.onTransition(transition);
  }

  @override
  Stream<Transition<SubscriptionsEvent, SubscriptionsState>> transformEvents(
      Stream<SubscriptionsEvent> events, transitionFn) {
    final nonDebounceStream =
        events.where((event) => event is! SubscriptionLoadMore);
    final debounceStream = events
        .where((event) => event is SubscriptionLoadMore)
        .debounceTime(Duration(milliseconds: 500));

    return super.transformEvents(
      MergeStream([nonDebounceStream, debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<SubscriptionsState> mapEventToState(
    SubscriptionsEvent event,
  ) async* {
    yield* event
        .when(
      load: _mapLoadEventToState,
      loadMore: _mapLoadMoreEventToState,
      reload: _mapReloadEventToState,
      unsubscribe: _mapUnsubscribeEventToState,
    )
        .onErrorReturnWith(
      (error, stackTrace) {
        print(stackTrace);
        if (error is HttpException) {
          return SubscriptionsState.error(
            message: error.toString(),
            status: error.status,
          );
        }
        // TODO: handle more exception

        return SubscriptionsState.error(
          message: error.toString(),
          status: 500,
        );
        // rethrow;
      },
    );
  }

  Stream<SubscriptionsState> _mapLoadEventToState() async* {
    yield SubscriptionsState.loading(
      hasReachedMax: state.hasReachedMax,
      isPaginated: state.isPaginated,
      page: state.page,
      subscriptions: state.subscriptions,
    );

    late final subscriptions;

    if (state.isPaginated) {
      subscriptions = await repository.fetchPaginatedSubscriptions(
        page: state.page,
        firebaseId: FirebaseMessagingService.token ?? '',
      );
    } else {
      subscriptions = await repository.fetchSubscriptions(
        firebaseIds: FirebaseMessagingService.token ?? '',
      );
    }

    yield SubscriptionsState.loaded(
      subscriptions: subscriptions,
      currentSubscriptions: subscriptions,
      hasReachedMax: false,
      page: 1,
      isPaginated: state.isPaginated,
    );
  }

  Stream<SubscriptionsState> _mapUnsubscribeEventToState(
    Subscription subscription,
  ) async* {
    yield SubscriptionsState.loading(
      hasReachedMax: state.hasReachedMax,
      isPaginated: state.isPaginated,
      page: state.page,
      subscriptions: state.subscriptions,
    );

    try {
      final CommonResponse response = await repository.unsubscribe(
        firebaseId: FirebaseMessagingService.token ?? '',
        subscriptionId: subscription.id,
      );

      scaffoldMessengerKey.currentState
          ?.showSnackBar(SnackBar(content: Text(response.message)));
    } on HttpException catch (e) {
      scaffoldMessengerKey.currentState
          ?.showSnackBar(SnackBar(content: Text(e.message)));
      return;
    }

    late final subscriptions;

    if (state.isPaginated) {
      subscriptions = await repository.fetchPaginatedSubscriptions(
        page: state.page,
        firebaseId: FirebaseMessagingService.token ?? '',
      );
    } else {
      subscriptions = await repository.fetchSubscriptions(
        firebaseIds: FirebaseMessagingService.token ?? '',
      );
    }

    yield SubscriptionsState.loaded(
      subscriptions: subscriptions,
      currentSubscriptions: subscriptions,
      hasReachedMax: false,
      page: 1,
      isPaginated: state.isPaginated,
    );
  }

  Stream<SubscriptionsState> _mapLoadMoreEventToState() async* {
    if (!(state is SubscriptionLoaded || state is SubscriptionLoadingMore) &&
        !state.hasReachedMax &&
        state.isPaginated) return;

    final newState = state as SubscriptionLoaded;

    yield SubscriptionsState.loadingMore(
      subscriptions: newState.subscriptions,
      hasReachedMax: newState.hasReachedMax,
      currentSubscriptions: newState.currentSubscriptions,
      page: newState.page,
      isPaginated: newState.isPaginated,
    );

    late final nextSubscriptions;

    if (state.isPaginated) {
      nextSubscriptions = await repository.fetchPaginatedSubscriptions(
        page: state.page + 1,
        firebaseId: FirebaseMessagingService.token ?? '',
      );
    } else {
      nextSubscriptions = await repository.fetchSubscriptions(
        firebaseIds: FirebaseMessagingService.token ?? '',
      );
    }

    yield SubscriptionsState.loaded(
      subscriptions: [...newState.subscriptions, ...nextSubscriptions],
      currentSubscriptions: [
        ...newState.currentSubscriptions,
        ...nextSubscriptions
      ],
      hasReachedMax: nextSubscriptions.isEmpty,
      page: newState.page + 1,
      isPaginated: newState.isPaginated,
    );
  }

  Stream<SubscriptionsState> _mapReloadEventToState() async* {
    yield SubscriptionsState.loading(
      hasReachedMax: state.hasReachedMax,
      isPaginated: state.isPaginated,
      page: 1,
      subscriptions: state.subscriptions,
    );

    late final subscriptions;

    if (state.isPaginated) {
      subscriptions = await repository.fetchPaginatedSubscriptions(
        page: 1,
        firebaseId: FirebaseMessagingService.token ?? '',
      );
    } else {
      subscriptions = await repository.fetchSubscriptions(
        firebaseIds: FirebaseMessagingService.token ?? '',
      );
    }

    yield SubscriptionsState.loaded(
      subscriptions: subscriptions,
      currentSubscriptions: subscriptions,
      hasReachedMax: false,
      page: 1,
      isPaginated: state.isPaginated,
    );
  }
}
