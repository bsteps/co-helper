import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';

abstract class CowinCentersRepositoryContract {
  const CowinCentersRepositoryContract();

  Future<List<CowinCenter>> fetchCowinCenterByPin(
    String pincode,
    DateTime dateTime,
  );
  Future<List<CowinCenter>> fetchCowinCenterByDistrict(
    CowinDistrict district,
    DateTime dateTime,
  );

  List<CowinCenter> filterSearchCowinCenters(
    List<CowinCenter> centers,
    Map<String, Set<String>> filters,
    String search,
  );
}
