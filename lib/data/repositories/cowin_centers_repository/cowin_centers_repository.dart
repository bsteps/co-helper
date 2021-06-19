import 'dart:async';

import 'package:co_helper/data/data_providers/cowin_centers_providers.dart';
import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository_contract.dart';

class CowinCentersRepository extends CowinCentersRepositoryContract {
  static const cowinCenterProviders = const CowinCenterProviders();

  @override
  Future<List<CowinCenter>> fetchCowinCenterByDistrict(
          CowinDistrict district, DateTime dateTime) =>
      cowinCenterProviders.fetchCowinCenterByDistrict(district, dateTime);
      
  @override
  Future<List<CowinCenter>> fetchCowinCenterByPin(
          String pincode, DateTime dateTime) =>
      cowinCenterProviders.fetchCowinCenterByPin(pincode, dateTime);

  @override
  List<CowinCenter> filterSearchCowinCenters(List<CowinCenter> centers, Map<String, Set<String>> filters, String search) {
    final newCenters = centers.where((center) {
      List<bool> filterCondition = [];

      final bool hasSearch = search != ''
          ? center.name.toLowerCase().contains(search) ||
              center.address.toLowerCase().contains(search) ||
              center.blockName.toLowerCase().contains(search) ||
              center.districtName.toLowerCase().contains(search) ||
              center.feeType.toLowerCase().contains(search) ||
              center.pincode.toString().toLowerCase().contains(search) ||
              center.stateName.toLowerCase().contains(search)
          : true;

      if (filters.isEmpty) {
        return hasSearch && true;
      }

      if (filters.entries.every((filter) => filter.value.isEmpty)) {
        return hasSearch && true;
      }

      for (var filter in filters.entries.where((filter) => filter.value.isNotEmpty)) {
        if (filter.value.any((element) {
          try {
            if (element == center.get(filter.key).toString()) {
              return true;
            }
          } catch (e) {}

          try {
            if (center.sessions.any((session) {
              try {
                if (element == session.get(filter.key).toString()) {
                  return true;
                }
              } catch (e) {}
              return false;
            })) {
              return true;
            }
          } catch (e) {}

          return false;
        })) {
          filterCondition.add(true);
        } else {
          filterCondition.add(false);
        }
      }

      return hasSearch && filterCondition.every((element) => element);
    }).toList();

    return newCenters;
  }
}
