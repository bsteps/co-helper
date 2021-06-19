import 'package:co_helper/data/data_providers/tiffins_providers.dart';
import 'package:co_helper/data/models/Tiffin.dart';
import 'package:co_helper/data/repositories/tiffins_repository/tiffins_repository_contract.dart';

class TiffinsRepository extends TiffinsRepositoryContract {
  static const tiffinsProvider = const TiffinsProviders();

  @override
  Future<List<Tiffin>> fetchTiffins() => tiffinsProvider.fetchTiffins();

  @override
  Iterable<Tiffin> filterSearchTiffins({
    required Iterable<Tiffin> tiffins,
    String? search,
    Map<String, Set<String>>? filters,
  }) {
    return tiffins.where((tiffin) {
      final hasSearch = search == null || search == ''
          ? true
          : tiffin.name.toLowerCase().contains(search.toLowerCase()) ||
              tiffin.mobileNumber
                  .toLowerCase()
                  .contains(search.toLowerCase()) ||
              tiffin.areaOfDelivery
                  .toLowerCase()
                  .contains(search.toLowerCase()) ||
              tiffin.cuisines.any((cuisine) =>
                  cuisine.toLowerCase().contains(search.toLowerCase())) ||
              tiffin.typesOfFood.any(
                  (food) => food.toLowerCase().contains(search.toLowerCase()));

      final hasFilter = filters == null ||
              filters.isEmpty ||
              filters.entries.every((filter) => filter.value.isEmpty)
          ? true
          : filters.entries.every(
              (filter) {
                final data = tiffin.get(filter.key);
                return filter.value.any(
                  (filterValue) {
                    if (data is List) {
                      return data.contains(filterValue);
                    }
                    if (data is String) {
                      return data.contains(filterValue);
                    }
                    if (data is int) {
                      return data.toString().contains(filterValue);
                    }
                    if (data is double) {
                      return data.toString().contains(filterValue);
                    }

                    return false;
                  },
                );
              },
            );

      return hasSearch && hasFilter;
    });
  }

  @override
  Future<List<Tiffin>> fetchPaginatedTiffins({
    required int page,
    int length = 15,
    String? search,
    Map<String, Set<String>>? filters,
  }) =>
      tiffinsProvider.fetchPaginatedTiffins(
        page: page,
        length: length,
        filters: filters,
        search: search,
      );
}
