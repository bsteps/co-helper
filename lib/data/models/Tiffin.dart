import 'package:co_helper/data/models/Point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'Tiffin.freezed.dart';
part 'Tiffin.g.dart';

@freezed
class Tiffin with _$Tiffin {
  const Tiffin._();
  const factory Tiffin({
    required int id,
    required String name,
    @JsonKey(name: 'types_of_food') required List<String> typesOfFood,
    required List<String> cuisines,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(name: 'area_of_delivery') required String areaOfDelivery,
    required List<String> areas,
    Point? location,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Tiffin;

  factory Tiffin.fromJson(Map<String, dynamic> json) => _$TiffinFromJson(json);

  dynamic get(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }

  double? get lat {
    return this.location?.lat;
  }

  double? get lng {
    return this.location?.lng;
  }
}
