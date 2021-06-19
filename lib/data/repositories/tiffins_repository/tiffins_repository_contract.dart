import 'package:co_helper/data/models/Tiffin.dart';

abstract class TiffinsRepositoryContract {
  const TiffinsRepositoryContract();

  Future<List<Tiffin>> fetchTiffins();
  Future<List<Tiffin>> fetchPaginatedTiffins({ required int page, int length = 15, String? search, Map<String, Set<String>>? filters });
  Iterable<Tiffin> filterSearchTiffins({ required Iterable<Tiffin> tiffins, String? search, Map<String, Set<String>>? filters });
}
