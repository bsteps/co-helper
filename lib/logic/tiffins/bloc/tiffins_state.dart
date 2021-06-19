part of 'tiffins_bloc.dart';

@freezed
class TiffinsState with _$TiffinsState {
  @Assert('page >= 0')
  const factory TiffinsState.initial({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    String? search,
    Map<String, Set<String>>? filters,
    @Default(1) int page,
    @Default([]) Iterable<Tiffin> tiffins,
  }) = TiffinInitial;

  @Assert('page >= 0')
  const factory TiffinsState.loading({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    String? search,
    Map<String, Set<String>>? filters,
    @Default(1) int page,
    @Default([]) Iterable<Tiffin> tiffins,
  }) = TiffinLoading;

  @Assert('page >= 0')
  const factory TiffinsState.searchLoading({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    String? search,
    Map<String, Set<String>>? filters,
    @Default(1) int page,
    @Default([]) Iterable<Tiffin> tiffins,
  }) = TiffinSearchLoading;

  @Assert('page >= 0')
  const factory TiffinsState.loaded({
    required bool hasReachedMax,
    @Default(false) bool isPaginated,
    String? search,
    Map<String, Set<String>>? filters,
    required int page,
    required Iterable<Tiffin> tiffins,
    required Iterable<Tiffin> currentTiffins,
  }) = TiffinLoaded;

  @Assert('page >= 0')
  const factory TiffinsState.error({
    @Default(false) bool hasReachedMax,
    @Default(false) bool isPaginated,
    String? search,
    Map<String, Set<String>>? filters,
    @Default(1) int page,
    @Default([]) Iterable<Tiffin> tiffins,
    required String message,
    required int status,
  }) = TiffinError;

  @Assert('page >= 0')
  const factory TiffinsState.loadingMore({
    required bool hasReachedMax,
    @Default(false) bool isPaginated,
    String? search,
    Map<String, Set<String>>? filters,
    required int page,
    required Iterable<Tiffin> tiffins,
    required Iterable<Tiffin> currentTiffins,
  }) = TiffinLoadingMore;
}
