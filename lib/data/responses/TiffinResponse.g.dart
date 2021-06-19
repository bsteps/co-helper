// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TiffinResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TiffinResponse _$_$_TiffinResponseFromJson(Map<String, dynamic> json) {
  return _$_TiffinResponse(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Tiffin.fromJson(e as Map<String, dynamic>))
        .toList(),
    message: json['message'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_TiffinResponseToJson(_$_TiffinResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };
