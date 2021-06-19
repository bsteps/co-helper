import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CowinSession extends Equatable {
  final String sessionId;
  final String date;
  final int availableCapacity;
  final int minAgeLimit;
  final String vaccine;
  final List<String> slots;

  CowinSession({
    required this.sessionId,
    required this.date,
    required this.availableCapacity,
    required this.minAgeLimit,
    required this.vaccine,
    required this.slots,
  });

  @override
  List<Object?> get props =>
      [sessionId, date, availableCapacity, minAgeLimit, vaccine, slots];

  Map<String, dynamic> toMap() {
    return {
      'session_id': sessionId,
      'date': date,
      'available_capacity': availableCapacity,
      'min_age_limit': minAgeLimit,
      'vaccine': vaccine,
      'slots': slots,
    };
  }

  factory CowinSession.fromMap(Map<String, dynamic> map) {
    return CowinSession(
      sessionId: map['session_id'],
      date: map['date'],
      availableCapacity: map['available_capacity'],
      minAgeLimit: map['min_age_limit'],
      vaccine: map['vaccine'],
      slots: List<String>.from(map['slots'].map((x) => x)),
    );
  }

  String toJson() => json.encode(toMap());

  factory CowinSession.fromJson(String source) =>
      CowinSession.fromMap(json.decode(source));

  dynamic get(String propertyName) {
    var _mapRep = toMap();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }
}
