
import 'package:co_helper/data/models/CowinState.dart';

abstract class CowinStatesRepositoryContract {
  const CowinStatesRepositoryContract();

   Future<List<CowinState>> fetchCowinStates();
}