import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'Subscription.freezed.dart';
part 'Subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const Subscription._();
  const factory Subscription({
    required int id,
    @JsonKey(name: 'firebase_id') required String firebaseId,
    required String type,
    int? age,
    @JsonKey(name: 'district_id') int? districtId,
    @JsonKey(name: 'district_name') String? districtName,
    int? pincode,
    @JsonKey(name: 'center_id') int? centerId,
    @JsonKey(name: 'center_name') String? centerName,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);

  dynamic get(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }

  String get name {
    if(type == "district" && this.districtName != null) {
      return this.districtName as String;
    }

    if(type == "center" && this.centerName != null) {
      return this.centerName as String;
    }

    if(type == "pincode") {
      return this.pincode.toString();
    }
    
    return "";
  }
}
