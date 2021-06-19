import 'dart:convert';
import 'dart:io';

import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:co_helper/data/http/client.dart';
import 'package:http/http.dart' as http;

class HttpClient extends Client {
  const HttpClient();

  @override
  Future<String> get({
    required url,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  }) async {
    final fullUrl = Uri.parse(url).replace(queryParameters: params);
    print(fullUrl);
    try {
      return _returnResponse(await http.get(
        fullUrl,
        headers: headers,
      ));
    } on SocketException {
      throw FetchDataException('No Internet!');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> post({
    required url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? requests,
    Map<String, String>? headers,
  }) async {
    final fullUrl = Uri.parse(url).replace(queryParameters: params);

    print(fullUrl);
    print(headers);
    print(requests);
    try {
      return _returnResponse(await http.post(
        fullUrl,
        headers: {
          'Accept': "application/json",
          'Content-Type': "application/json",
          ...(headers ?? {})
        },
        body: jsonEncode(requests),
      ));
    } on SocketException {
      throw FetchDataException('No Internet!');
    } catch (e) {
      rethrow;
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body.toString();
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  @override
  Future<String> delete({
    required url,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  }) async {
    final fullUrl = Uri.parse(url).replace(queryParameters: params);
    print(fullUrl);
    try {
      return _returnResponse(await http.delete(
        fullUrl,
        headers: headers,
      ));
    } on SocketException {
      throw FetchDataException('No Internet!');
    } catch (e) {
      rethrow;
    }
  }
}
