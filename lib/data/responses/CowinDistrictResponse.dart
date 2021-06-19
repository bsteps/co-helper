import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CowinDistrictResponse extends Equatable {
  late final List<CowinDistrict> districts;
  late final int ttl;

  CowinDistrictResponse({required this.districts, required this.ttl});

  CowinDistrictResponse.fromJson(Map<String, dynamic> json) {
    districts = [];
    if (json['districts'] != null) {
      json['districts'].forEach((v) {
        districts.add(new CowinDistrict.fromJson(v));
      });
    }
    ttl = json['ttl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['districts'] = this.districts.map((v) => v.toJson()).toList();
    data['ttl'] = this.ttl;
    return data;
  }

  @override
  List<Object?> get props => [districts, ttl];
}
