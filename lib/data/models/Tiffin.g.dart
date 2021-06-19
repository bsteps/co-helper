// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Tiffin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tiffin _$_$_TiffinFromJson(Map<String, dynamic> json) {
  return _$_Tiffin(
    id: json['id'] as int,
    name: json['name'] as String,
    typesOfFood: (json['types_of_food'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    cuisines:
        (json['cuisines'] as List<dynamic>).map((e) => e as String).toList(),
    mobileNumber: json['mobile_number'] as String,
    areaOfDelivery: json['area_of_delivery'] as String,
    areas: (json['areas'] as List<dynamic>).map((e) => e as String).toList(),
    location: json['location'] == null
        ? null
        : Point.fromJson(json['location'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$_TiffinToJson(_$_Tiffin instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'types_of_food': instance.typesOfFood,
      'cuisines': instance.cuisines,
      'mobile_number': instance.mobileNumber,
      'area_of_delivery': instance.areaOfDelivery,
      'areas': instance.areas,
      'location': instance.location,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
