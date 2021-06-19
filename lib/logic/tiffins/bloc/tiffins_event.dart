part of 'tiffins_bloc.dart';

@freezed
class TiffinsEvent with _$TiffinsEvent {
  const factory TiffinsEvent.load() = TiffinLoad;
  const factory TiffinsEvent.loadMore() = TiffinLoadMore;
  const factory TiffinsEvent.reload() = TiffinReload;
  const factory TiffinsEvent.search(String text) = TiffinSearch;
  const factory TiffinsEvent.filter(
      {required String key, required String value}) = TiffinFilter;
  const factory TiffinsEvent.filterSelected() = TiffinFilterSelected;
}
