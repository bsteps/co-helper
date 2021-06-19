part of 'cowin_districts_bloc.dart';

@immutable
abstract class CowinDistrictsState extends Equatable {
  const CowinDistrictsState();

  @override
  List<Object> get props => [];
}

class CowinDistrictsInitial extends CowinDistrictsState {}

class CowinDistrictsLoading extends CowinDistrictsState {}

class CowinDistrictsLoaded extends CowinDistrictsState {
  final List<CowinDistrict> districts;
  CowinDistrictsLoaded({
    required this.districts,
  });

  @override
  List<Object> get props => [districts];

  CowinDistrictsLoaded copyWith({
    List<CowinDistrict>? districts,
  }) {
    return CowinDistrictsLoaded(
      districts: districts ?? this.districts,
    );
  }
}

class CowinDistrictsError extends CowinDistrictsState {
  final String message;
  final int status;

  CowinDistrictsError({
    required this.message,
    required this.status,
  });

  @override
  List<Object> get props => [message, status];

  CowinDistrictsError copyWith({
    String? message,
    int? status,
  }) {
    return CowinDistrictsError(
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }
}
