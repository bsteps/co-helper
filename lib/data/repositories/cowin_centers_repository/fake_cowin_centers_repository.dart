import 'dart:async';

import 'package:co_helper/data/data_providers/cowin_centers_providers.dart';
import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/models/CowinSession.dart';
import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository_contract.dart';

class FakeCowinCentersRepository extends CowinCentersRepositoryContract {
  static const cowinCenterProviders = const CowinCenterProviders();

  @override
  Future<List<CowinCenter>> fetchCowinCenterByDistrict(
    CowinDistrict district,
    DateTime dateTime,
  ) async {
    await Future.delayed(Duration(seconds: 2));
    return List.filled(
      100,
      CowinCenter(
        centerId: 1,
        name: "test",
        address: "address",
        stateName: "stateName",
        districtName: "districtName",
        blockName: "blockName",
        pincode: 290009,
        lat: 121,
        long: 24,
        from: "from",
        to: "to",
        feeType: "Free",
        sessions: [
          CowinSession(
            sessionId: "1",
            date: "12/12/1231",
            availableCapacity: 10,
            minAgeLimit: 18,
            vaccine: "COVISHIELD",
            slots: ["10:10"],
          )
        ],
      ),
    );
  }

  @override
  Future<List<CowinCenter>> fetchCowinCenterByPin(
      String pincode, DateTime dateTime) async {
    await Future.delayed(Duration(seconds: 2));

    return List.filled(
      0,
      CowinCenter(
        centerId: 1,
        name: "test",
        address: "address",
        stateName: "stateName",
        districtName: "districtName",
        blockName: "blockName",
        pincode: 290009,
        lat: 121,
        long: 24,
        from: "from",
        to: "to",
        feeType: "feeType",
        sessions: [],
      ),
    );
  }

  @override
  List<CowinCenter> filterSearchCowinCenters(List<CowinCenter> centers,
      Map<String, Set<String>> filters, String search) {
    return centers;
  }
}
