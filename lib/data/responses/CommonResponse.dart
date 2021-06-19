import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'CommonResponse.freezed.dart';
part 'CommonResponse.g.dart';

@freezed
class CommonResponse with _$CommonResponse {
  const factory CommonResponse({
    required String message,
    required String status,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(Map<String, dynamic> json) => _$CommonResponseFromJson(json);
}