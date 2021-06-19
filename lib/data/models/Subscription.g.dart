// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$_$_SubscriptionFromJson(Map<String, dynamic> json) {
  return _$_Subscription(
    id: json['id'] as int,
    firebaseId: json['firebase_id'] as String,
    type: json['type'] as String,
    age: json['age'] as int?,
    districtId: json['district_id'] as int?,
    districtName: json['district_name'] as String?,
    pincode: json['pincode'] as int?,
    centerId: json['center_id'] as int?,
    centerName: json['center_name'] as String?,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firebase_id': instance.firebaseId,
      'type': instance.type,
      'age': instance.age,
      'district_id': instance.districtId,
      'district_name': instance.districtName,
      'pincode': instance.pincode,
      'center_id': instance.centerId,
      'center_name': instance.centerName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
