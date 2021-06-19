import 'package:auto_route/auto_route.dart';
import 'package:co_helper/constants/prefs_strings.dart';
import 'package:co_helper/logic/location/bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:co_helper/presentation/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationGuard extends AutoRouteGuard {
  BuildContext context;

  LocationGuard({
    required this.context,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (resolver.route.routeName == VaccineCenterScreenRoute.name) {
      
      if (context.read<LocationBloc>().currentState == null) {
        router.push(SelectLocationScreenRoute());
        resolver.next(false);
        return;
      }
    }

    resolver.next(true);
  }
}
