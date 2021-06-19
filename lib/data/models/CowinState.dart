import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CowinState extends Equatable {
  late final int stateId;
  late final String stateName;

  CowinState({required this.stateId, required this.stateName});

  CowinState.fromJson(Map<String, dynamic> json) {
    this.stateId = json['state_id'];
    this.stateName = json['state_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state_id'] = this.stateId;
    data['state_name'] = this.stateName;
    return data;
  }

  CowinState copyWith({
    int? stateId,
    String? stateName,
  }) {
    return CowinState(
      stateId: stateId ?? this.stateId,
      stateName: stateName ?? this.stateName,
    );
  }

  @override
  List<Object?> get props => [stateId, stateName];
}
