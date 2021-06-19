import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Point.freezed.dart';
part 'Point.g.dart';

@freezed
class Point with _$Point {
  const Point._();

  const factory Point({
    required String type,
    required List<double> coordinates,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  double? get lat {
    if (this.coordinates.length == 2) {
      return this.coordinates[1];
    }
    return null;
  }

  double? get lng {
    if (this.coordinates.length == 2) {
      return this.coordinates[0];
    }
    return null;
  }
}
