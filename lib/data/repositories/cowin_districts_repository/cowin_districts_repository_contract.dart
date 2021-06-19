
import 'package:co_helper/data/models/CowinDistrict.dart';

abstract class CowinDistrictsRepositoryContract {
  const CowinDistrictsRepositoryContract();

   Future<List<CowinDistrict>> fetchCowinDistricts(int id);
}