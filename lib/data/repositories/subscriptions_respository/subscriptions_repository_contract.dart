import 'package:co_helper/data/models/Subscription.dart';
import 'package:co_helper/data/responses/CommonResponse.dart';

abstract class SubscriptionsRepositoryContract {
  const SubscriptionsRepositoryContract();

  Future<List<Subscription>> fetchSubscriptions({
    required String firebaseIds,
  });

  Future<List<Subscription>> fetchPaginatedSubscriptions({
    required int page,
    int length,
    required String firebaseId,
  });

  Future<CommonResponse> subscribePincode({
    required String firebaseId,
    required String pincode,
    required int districtId,
    required String districtName,
  });

  Future<CommonResponse> unsubscribe({
    required String firebaseId,
    required int subscriptionId,
  });
  
  Future<CommonResponse> subscribeDistrict({
    required String firebaseId,
    required int districtId,
    required String districtName,
  });

  Future<CommonResponse> subscribeCenter({
    required String firebaseId,
    required int centerId,
    required String centerName,
  });
}
