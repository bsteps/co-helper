import 'package:co_helper/data/models/Subscription.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'SubscriptionResponse.freezed.dart';
part 'SubscriptionResponse.g.dart';

@freezed
class SubscriptionResponse with _$SubscriptionResponse {
  const factory SubscriptionResponse({
    List<Subscription>? data,
    required String message,
    required String status,
  }) = _SubscriptionResponse;

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) => _$SubscriptionResponseFromJson(json);
}