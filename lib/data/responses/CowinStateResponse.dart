import 'package:co_helper/data/models/CowinState.dart';

class CowinStateResponse {
  late List<CowinState> states;
  late int ttl;

  CowinStateResponse({required this.states, required this.ttl});

  CowinStateResponse.fromJson(Map<String, dynamic> json) {
    if (json['states'] != null) {
      states = [];
      json['states'].forEach((v) {
        states.add(new CowinState.fromJson(v));
      });
    }
    ttl = json['ttl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['states'] = this.states.map((v) => v.toJson()).toList();
    data['ttl'] = this.ttl;
    return data;
  }
}