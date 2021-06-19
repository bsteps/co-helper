import 'package:flutter_config/flutter_config.dart';

class ApiStrings {
  static const cowinBaseUrl = "https://cdn-api.co-vin.in/api/v2/";
  static String coHelperBaseUrl = FlutterConfig.get("API_URL");

  // cowin apis
  static const cowinStates = cowinBaseUrl + "admin/location/states";
  static const cowinDistricts =
      cowinBaseUrl + "admin/location/districts/:stateId";
  static const cowinCalenderByDistrict = cowinBaseUrl +
      "appointment/sessions/public/calendarByDistrict?district_id=:districtId&date=:date";
  static const cowinCalenderByPin = cowinBaseUrl +
      "appointment/sessions/public/calendarByPin?pincode=:pincode&date=:date";

  // tiffin apis
  static String tiffins = coHelperBaseUrl + "tiffins";

  // subscription apis
  static String subscriptions = coHelperBaseUrl + "subscriptions";
  static String subscriptionStore = coHelperBaseUrl + "subscriptions/store";
  static String subscriptionDelete({
    required int subscriptionId,
    required String firebaseId,
  }) {
    return coHelperBaseUrl +
        "subscriptions/$subscriptionId/firebase_id/$firebaseId";
  }
}
