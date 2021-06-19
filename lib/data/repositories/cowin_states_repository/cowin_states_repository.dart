import 'dart:async';

import 'package:co_helper/data/data_providers/cowin_states_providers.dart';
import 'package:co_helper/data/models/CowinState.dart';
import 'package:co_helper/data/repositories/cowin_states_repository/cowin_states_repository_contract.dart';

class CowinStatesRepository extends CowinStatesRepositoryContract {
  static const cowinStatesProviders = const CowinStatesProviders();

  Future<List<CowinState>> fetchCowinStates() => cowinStatesProviders.fetchCowinStates();

}