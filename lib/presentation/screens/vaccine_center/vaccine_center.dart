import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository_contract.dart';
import 'package:co_helper/logic/cowin_centers/bloc/cowin_centers_bloc.dart';
import 'package:co_helper/logic/location/bloc/location_bloc.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_center_list.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_center_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VaccineCenterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CowinCentersBloc(
        subscriptionsRepository: RepositoryProvider.of(context),
        cowinCentersRepository:
            RepositoryProvider.of<CowinCentersRepositoryContract>(context),
        locationBloc: BlocProvider.of<LocationBloc>(context),
      ),
      child: VaccineCenterScaffold(
        child: Builder(builder: (context) {
          return VaccineCenterList(
            scrollDirection: Axis.vertical,
          );
        }),
      ),
    );
  }
}