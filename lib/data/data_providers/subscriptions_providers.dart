import 'dart:convert';

import 'package:co_helper/constants/api_strings.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/http/client.dart';
import 'package:co_helper/data/http/current_client.dart';
import 'package:co_helper/data/models/Subscription.dart';
import 'package:co_helper/data/responses/CommonResponse.dart';
import 'package:co_helper/data/responses/SubscriptionResponse.dart';

class SubscriptionsProviders {
  final Client client = currentHttpClient;

  const SubscriptionsProviders();

  Future<List<Subscription>> fetchSubscriptions({
    required String firebaseIds,
  }) async {
    final response = await client.get(url: ApiStrings.subscriptions);
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final subscriptionsResponse =
        SubscriptionResponse.fromJson(json.decode(response));

    if (subscriptionsResponse.status != "1") {
      throw HttpException(subscriptionsResponse.message, "SubscriptionResponse",
          int.parse(subscriptionsResponse.status));
    }

    return subscriptionsResponse.data ?? [];
  }

  Future<List<Subscription>> fetchPaginatedSubscriptions({
    required int page,
    required int length,
    required String firebaseId,
  }) async {
    final response = await client.get(url: ApiStrings.subscriptions, params: {
      "page": page.toString(),
      "per_page": length.toString(),
      "firebase_id": firebaseId,
    });
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final subscriptionsResponse =
        SubscriptionResponse.fromJson(json.decode(response));

    if (subscriptionsResponse.status != "1") {
      throw HttpException(
        subscriptionsResponse.message,
        "SubscriptionResponse",
        int.parse(subscriptionsResponse.status),
      );
    }

    return subscriptionsResponse.data ?? [];
  }

  Future<CommonResponse> subscribePincode({
    required String firebaseId,
    required String pincode,
    required int districtId,
    required String districtName,
  }) async {
    // TODO: fix this
    final response = await client.post(
      url: ApiStrings.subscriptionStore,
      requests: {
        "type": "pincode",
        "pincode": pincode,
        "firebase_id": firebaseId,
        "district_id": districtId.toString(),
        "district_name": districtName,
      },
    );
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final commonResponse = CommonResponse.fromJson(json.decode(response));

    if (commonResponse.status != "1") {
      throw HttpException(
        commonResponse.message,
        "CommonResponse",
        int.parse(commonResponse.status),
      );
    }

    return commonResponse;
  }

  Future<CommonResponse> unsubscribe({
    required String firebaseId,
    required int subscriptionId,
  }) async {
    final response = await client.delete(
      url: ApiStrings.subscriptionDelete(
        firebaseId: firebaseId,
        subscriptionId: subscriptionId,
      ),
    );
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final commonResponse = CommonResponse.fromJson(json.decode(response));

    if (commonResponse.status != "1") {
      throw HttpException(
        commonResponse.message,
        "CommonResponse",
        int.parse(commonResponse.status),
      );
    }

    return commonResponse;
  }

  Future<CommonResponse> subscribeDistrict({
    required String firebaseId,
    required int districtId,
    required String districtName,
  }) async {
    final response = await client.post(
      url: ApiStrings.subscriptionStore,
      requests: {
        "type": "district",
        "district_id": districtId.toString(),
        "district_name": districtName,
        "firebase_id": firebaseId,
      },
    );
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final commonResponse = CommonResponse.fromJson(json.decode(response));

    if (commonResponse.status != "1") {
      throw HttpException(
        commonResponse.message,
        "CommonResponse",
        int.parse(commonResponse.status),
      );
    }

    return commonResponse;
  }

  Future<CommonResponse> subscribeCenter({
    required String firebaseId,
    required int centerId,
    required String centerName,
  }) async {
    // TODO: fix this
    final response = await client.post(
      url: ApiStrings.subscriptionStore,
      requests: {
        "type": "center",
        "center_id": centerId,
        "center_name": centerName,
        "district_id": 77,
        "district_name": "Test",
        "firebase_id": firebaseId,
      },
    );
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final commonResponse = CommonResponse.fromJson(json.decode(response));

    if (commonResponse.status != "1") {
      throw HttpException(
        commonResponse.message,
        "CommonResponse",
        int.parse(commonResponse.status),
      );
    }

    return commonResponse;
  }
}
