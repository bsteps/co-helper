// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Point _$_$_PointFromJson(Map<String, dynamic> json) {
  return _$_Point(
    type: json['type'] as String,
    coordinates: (json['coordinates'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
  );
}

Map<String, dynamic> _$_$_PointToJson(_$_Point instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
