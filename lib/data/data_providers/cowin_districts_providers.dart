import 'dart:convert';

import 'package:co_helper/constants/api_strings.dart';
import 'package:co_helper/data/http/client.dart';
import 'package:co_helper/data/http/current_client.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/responses/CowinDistrictResponse.dart';

class CowinDistrictProviders {
  final Client client = currentHttpClient;

  const CowinDistrictProviders();

  Future<List<CowinDistrict>> fetchCowinDistricts(int id) async {
    final response = await client.get(url: ApiStrings.cowinDistricts.replaceFirst(":stateId", id.toString()));
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    return CowinDistrictResponse.fromJson(json.decode(response)).districts;
  }
}
