import 'dart:convert';

import 'package:co_helper/constants/api_strings.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/http/client.dart';
import 'package:co_helper/data/http/current_client.dart';
import 'package:co_helper/data/models/Tiffin.dart';
import 'package:co_helper/data/responses/TiffinResponse.dart';

class TiffinsProviders {
  final Client client = currentHttpClient;

  const TiffinsProviders();

  Future<List<Tiffin>> fetchTiffins() async {
    final response = await client.get(url: ApiStrings.tiffins);
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final tiffinResponse = TiffinResponse.fromJson(json.decode(response));

    if (tiffinResponse.status != "1") {
      throw HttpException(tiffinResponse.message, "TiffinResponse",
          int.parse(tiffinResponse.status));
    }

    return tiffinResponse.data ?? [];
  }

  Future<List<Tiffin>> fetchPaginatedTiffins({
    required int page,
    required int length,
    String? search,
    Map<String, Set<String>>? filters,
  }) async {
    final response = await client.get(
      url: ApiStrings.tiffins,
      params: {
        "page": page.toString(),
        "per_page": length.toString(),
        ...(search != null && search != '' ? { 'search': search } : {}),
        ...(filters == null ||
              filters.isEmpty ||
              filters.entries.every((filter) => filter.value.isEmpty) ? {} : {
                ...(Map.fromIterable(filters.entries.map((filter) {
                  return filter.value.toList().asMap().entries.map((filterData) => { "${filter.key}[${filterData.key}]": filterData.value });
                }).expand((element) => element).expand((e) => e.entries).toList(), key: (e) => e.key, value: (e) => e.value))
              })
      },
    );
    // If you want do some manipulation or throw exception etc;
    // handle response data etc;
    final tiffinResponse = TiffinResponse.fromJson(json.decode(response));

    if (tiffinResponse.status != "1") {
      throw HttpException(tiffinResponse.message, "TiffinResponse",
          int.parse(tiffinResponse.status));
    }

    return tiffinResponse.data ?? [];
  }
}
