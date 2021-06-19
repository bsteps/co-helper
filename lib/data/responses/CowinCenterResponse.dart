import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:co_helper/data/models/CowinCenter.dart';

@immutable
class CowinCenterResponse extends Equatable {
  final List<CowinCenter> centers;

  CowinCenterResponse({required this.centers});

  @override
  List<Object?> get props =>[centers];

  Map<String, dynamic> toMap() {
    return {
      'centers': centers.map((x) => x.toMap()).toList(),
    };
  }

  factory CowinCenterResponse.fromMap(Map<String, dynamic> map) {
    print("CowinCenterResponse.fromMap: "+ map['centers'].toString());
    return CowinCenterResponse(
      centers: List<CowinCenter>.from((map['centers']).map((x) => CowinCenter.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CowinCenterResponse.fromJson(String source) => CowinCenterResponse.fromMap(json.decode(source));
}
