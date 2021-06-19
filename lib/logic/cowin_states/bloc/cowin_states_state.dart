part of 'cowin_states_bloc.dart';

@immutable
abstract class CowinStatesState extends Equatable {
  const CowinStatesState();

  @override
  List<Object> get props => [];
}

class CowinStatesInitial extends CowinStatesState {}

class CowinStatesLoading extends CowinStatesState {}

class CowinStatesLoaded extends CowinStatesState {
  final List<CowinState> states;
  CowinStatesLoaded({
    required this.states,
  });

  @override
  List<Object> get props => [states];

  CowinStatesLoaded copyWith({
    List<CowinState>? states,
  }) {
    return CowinStatesLoaded(
      states: states ?? this.states,
    );
  }
}

class CowinStatesError extends CowinStatesState {
  final String message;
  final int status;

  CowinStatesError({
    required this.message,
    required this.status,
  });

  @override
  List<Object> get props => [message, status];

  CowinStatesError copyWith({
    String? message,
    int? status,
  }) {
    return CowinStatesError(
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }
}
