import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:co_helper/data/models/CowinSession.dart';

@immutable
class CowinCenter extends Equatable {
  final int centerId;
  final String name;
  final String address;
  final String stateName;
  final String districtName;
  final String blockName;
  final int pincode;
  final int lat;
  final int long;
  final String from;
  final String to;
  final String feeType;
  final List<CowinSession> sessions;

  CowinCenter({
    required this.centerId,
    required this.name,
    required this.address,
    required this.stateName,
    required this.districtName,
    required this.blockName,
    required this.pincode,
    required this.lat,
    required this.long,
    required this.from,
    required this.to,
    required this.feeType,
    required this.sessions,
  });

  @override
  List<Object?> get props => [
        centerId,
        name,
        address,
        stateName,
        districtName,
        blockName,
        pincode,
        lat,
        long,
        from,
        to,
        feeType,
        sessions,
      ];

  Map<String, dynamic> toMap() {
    return {
      'center_id': centerId,
      'name': name,
      'address': address,
      'state_name': stateName,
      'district_name': districtName,
      'block_name': blockName,
      'pincode': pincode,
      'lat': lat,
      'long': long,
      'from': from,
      'to': to,
      'fee_type': feeType,
      'sessions': sessions,
    };
  }

  factory CowinCenter.fromMap(Map<String, dynamic> map) {
    return CowinCenter(
      centerId: map['center_id'],
      name: map['name'],
      address: map['address'],
      stateName: map['state_name'],
      districtName: map['district_name'],
      blockName: map['block_name'],
      pincode: map['pincode'],
      lat: map['lat'],
      long: map['long'],
      from: map['from'],
      to: map['to'],
      feeType: map['fee_type'],
      sessions: List<CowinSession>.from(
          map['sessions'].map((s) => CowinSession.fromMap(s))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CowinCenter.fromJson(String source) =>
      CowinCenter.fromMap(json.decode(source));

  dynamic get(String propertyName) {
    var _mapRep = toMap();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }
}
