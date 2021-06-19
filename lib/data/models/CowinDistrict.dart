
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CowinDistrict extends Equatable {
  late final int districtId;
  late final String districtName;

  CowinDistrict({required this.districtId, required this.districtName});

  CowinDistrict.fromJson(Map<String, dynamic> json) {
    this.districtId = json['district_id'];
    this.districtName = json['district_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['district_id'] = this.districtId;
    data['district_name'] = this.districtName;
    return data;
  }

  @override
  List<Object?> get props => [districtId, districtName];

  CowinDistrict copyWith({
    int? districtId,
    String? districtName,
  }) {
    return CowinDistrict(
      districtId: districtId ?? this.districtId,
      districtName: districtName ?? this.districtName,
    );
  }
}
