import 'package:co_helper/data/data_providers/subscriptions_providers.dart';
import 'package:co_helper/data/models/Subscription.dart';
import 'package:co_helper/data/repositories/subscriptions_respository/subscriptions_repository_contract.dart';
import 'package:co_helper/data/responses/CommonResponse.dart';

class SubscriptionsRepository extends SubscriptionsRepositoryContract {
  static const _subscriptionsProvider = const SubscriptionsProviders();

  @override
  Future<List<Subscription>> fetchPaginatedSubscriptions({
    required int page,
    int length = 15,
    required String firebaseId,
  }) {
    return _subscriptionsProvider.fetchPaginatedSubscriptions(
      page: page,
      length: length,
      firebaseId: firebaseId,
    );
  }

  @override
  Future<List<Subscription>> fetchSubscriptions({
    required String firebaseIds,
  }) {
    return _subscriptionsProvider.fetchSubscriptions(
      firebaseIds: firebaseIds,
    );
  }

  @override
  Future<CommonResponse> subscribeDistrict({
    required String firebaseId,
    required int districtId,
    required String districtName,
  }) {
    return _subscriptionsProvider.subscribeDistrict(
      firebaseId: firebaseId,
      districtId: districtId,
      districtName: districtName,
    );
  }

  @override
  Future<CommonResponse> subscribePincode({
    required String firebaseId,
    required String pincode,
    required int districtId,
    required String districtName,
  }) {
    return _subscriptionsProvider.subscribePincode(
      firebaseId: firebaseId,
      pincode: pincode,
      districtId: districtId,
      districtName: districtName,
    );
  }

  @override
  Future<CommonResponse> unsubscribe({
    required String firebaseId,
    required int subscriptionId,
  }) {
    return _subscriptionsProvider.unsubscribe(
      firebaseId: firebaseId,
      subscriptionId: subscriptionId,
    );
  }

  @override
  Future<CommonResponse> subscribeCenter({
    required String firebaseId,
    required int centerId,
    required String centerName,
  }) {
    return _subscriptionsProvider.subscribeCenter(
      firebaseId: firebaseId,
      centerId: centerId,
      centerName: centerName,
    );
  }
}
