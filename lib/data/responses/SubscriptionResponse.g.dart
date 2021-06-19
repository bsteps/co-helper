// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SubscriptionResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionResponse _$_$_SubscriptionResponseFromJson(
    Map<String, dynamic> json) {
  return _$_SubscriptionResponse(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
        .toList(),
    message: json['message'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_SubscriptionResponseToJson(
        _$_SubscriptionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };
