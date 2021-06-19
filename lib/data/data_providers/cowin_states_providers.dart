import 'dart:convert';

import 'package:co_helper/constants/api_strings.dart';
import 'package:co_helper/data/http/client.dart';
import 'package:co_helper/data/http/current_client.dart';
import 'package:co_helper/data/models/CowinState.dart';
import 'package:co_helper/data/responses/CowinStateResponse.dart';

class CowinStatesProviders {
  final Client client = currentHttpClient;

  const CowinStatesProviders();

  Future<List<CowinState>> fetchCowinStates() async {
    final response = await client.get(url: ApiStrings.cowinStates);
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    return CowinStateResponse.fromJson(json.decode(response)).states;
  }
}
