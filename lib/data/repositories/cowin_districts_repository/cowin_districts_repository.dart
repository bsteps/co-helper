import 'dart:async';

import 'package:co_helper/data/data_providers/cowin_districts_providers.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/repositories/cowin_districts_repository/cowin_districts_repository_contract.dart';

class CowinDistrictsRepository extends CowinDistrictsRepositoryContract {
  static const cowinStatesProviders = const CowinDistrictProviders();

  @override
  Future<List<CowinDistrict>> fetchCowinDistricts(id) => cowinStatesProviders.fetchCowinDistricts(id);
}