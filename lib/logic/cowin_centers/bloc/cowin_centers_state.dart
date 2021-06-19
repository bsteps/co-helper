part of 'cowin_centers_bloc.dart';

@immutable
abstract class CowinCentersState extends Equatable {
  final List<CowinCenter> centers;
  final Map<String, Set<String>>? filters;
  final String? searchValue;

  const CowinCentersState(
      {required this.centers, this.filters, this.searchValue});

  @override
  List<Object> get props => [centers];
}

class CowinCentersInitial extends CowinCentersState {
  CowinCentersInitial({List<CowinCenter>? centers})
      : super(centers: centers ?? []);
}

class CowinCentersLoading extends CowinCentersState {
  CowinCentersLoading({
    List<CowinCenter>? centers,
    Map<String, Set<String>>? filters,
    String? searchValue,
  }) : super(
          centers: centers ?? [],
          filters: filters,
          searchValue: searchValue,
        );
}

class CowinCentersSearchLoading extends CowinCentersState {
  CowinCentersSearchLoading({
    List<CowinCenter>? centers,
    Map<String, Set<String>>? filters,
    String? searchValue,
  }) : super(
          centers: centers ?? [],
          filters: filters,
          searchValue: searchValue,
        );
}

class CowinCentersSubscribing extends CowinCentersLoaded {
  CowinCentersSubscribing({
    List<CowinCenter>? centers,
    Map<String, Set<String>>? filters,
    String? searchValue,
    currentList,
  }) : super(
          currentList: currentList,
          centers: centers ?? [],
          filters: filters,
          searchValue: searchValue,
        );
}

class CowinCentersFilterLoading extends CowinCentersState {
  CowinCentersFilterLoading({
    List<CowinCenter>? centers,
    Map<String, Set<String>>? filters,
    String? searchValue,
  }) : super(
          centers: centers ?? [],
          filters: filters,
          searchValue: searchValue,
        );
}

class CowinCentersLoaded extends CowinCentersState {
  final List<CowinCenter> currentList;

  CowinCentersLoaded({
    List<CowinCenter>? centers,
    Map<String, Set<String>>? filters,
    required this.currentList,
    String? searchValue,
  }) : super(
            centers: centers ?? [], filters: filters, searchValue: searchValue);

  @override
  List<Object> get props => [centers, currentList, filters ?? {}];

  CowinCentersLoaded copyWith({
    List<CowinCenter>? centers,
    List<CowinCenter>? currentList,
    String? searchValue,
    Map<String, Set<String>>? filters,
  }) {
    return CowinCentersLoaded(
      centers: centers ?? this.centers,
      currentList: currentList ?? this.currentList,
      filters: filters ?? this.filters,
      searchValue: searchValue ?? this.searchValue,
    );
  }
}

class CowinCentersError extends CowinCentersState {
  final String message;
  final int status;

  CowinCentersError(
      {required this.message, required this.status, List<CowinCenter>? centers})
      : super(centers: centers ?? []);

  @override
  List<Object> get props => [message, status];

  CowinCentersError copyWith({
    String? message,
    int? status,
  }) {
    return CowinCentersError(
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }
}
