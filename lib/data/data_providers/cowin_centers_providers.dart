import 'dart:convert';

import 'package:co_helper/constants/api_strings.dart';
import 'package:co_helper/data/http/client.dart';
import 'package:co_helper/data/http/current_client.dart';
import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/responses/CowinCenterResponse.dart';
import 'package:intl/intl.dart';

class CowinCenterProviders {
  final Client client = currentHttpClient;

  const CowinCenterProviders();

  Future<List<CowinCenter>> fetchCowinCenterByPin(
    String pincode,
    DateTime dateTime,
  ) async {
    final response = await client.get(
        url: ApiStrings.cowinCalenderByPin
            .replaceFirst(":pincode", pincode.toString())
            .replaceFirst(":date", DateFormat('dd/MM/yyy').format(dateTime)));
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    return CowinCenterResponse.fromJson(response).centers;
  }

  Future<List<CowinCenter>> fetchCowinCenterByDistrict(
    CowinDistrict district,
    DateTime dateTime,
  ) async {
    final response = await client.get(
        url: ApiStrings.cowinCalenderByDistrict
            .replaceFirst(":districtId", district.districtId.toString())
            .replaceFirst(":date", DateFormat('dd/MM/yyy').format(dateTime)));
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    return CowinCenterResponse.fromJson(response).centers;
  }
}
