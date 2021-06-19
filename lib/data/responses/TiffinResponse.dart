import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:co_helper/data/models/Tiffin.dart';

part 'TiffinResponse.freezed.dart';
part 'TiffinResponse.g.dart';

@freezed
class TiffinResponse with _$TiffinResponse {
  const factory TiffinResponse({
    List<Tiffin>? data,
    required String message,
    required String status,
  }) = _TiffinResponse;

  factory TiffinResponse.fromJson(Map<String, dynamic> json) => _$TiffinResponseFromJson(json);
}