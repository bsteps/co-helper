// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../logic/cowin_centers/bloc/cowin_centers_bloc.dart' as _i13;
import '../../logic/tiffins/bloc/tiffins_bloc.dart' as _i14;
import '../../utility/transitions/page_transition.dart' as _i5;
import '../screens/app_wrapper.dart' as _i4;
import '../screens/home.dart' as _i6;
import '../screens/select_location/select_location.dart' as _i9;
import '../screens/subscription/subscription_screen.dart' as _i12;
import '../screens/tiffin/map_view/map_screen.dart' as _i11;
import '../screens/tiffin/tiffin_service_screen.dart' as _i7;
import '../screens/vaccine_center/map_view/map_screen.dart' as _i10;
import '../screens/vaccine_center/vaccine_center.dart' as _i8;
import 'routes_guard.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.locationGuard})
      : super(navigatorKey);

  final _i3.LocationGuard locationGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.AppWrapper();
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    HomeScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.HomeScreen();
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    TiffinServiceScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.TiffinServiceScreen();
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    VaccineCenterScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.VaccineCenterScreen();
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    SelectLocationScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.SelectLocationScreen();
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    VaccineCenterMapScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VaccineCenterMapScreenRouteArgs>();
          return _i10.VaccineCenterMapScreen(
              key: args.key, cowinCentersBloc: args.cowinCentersBloc);
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    TiffinServiceMapScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TiffinServiceMapScreenRouteArgs>();
          return _i11.TiffinServiceMapScreen(
              key: args.key, tiffinsBloc: args.tiffinsBloc);
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false),
    SubscriptionScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.SubscriptionScreen();
        },
        transitionsBuilder: _i5.pageTransition,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AppWrapperRoute.name, path: '/', children: [
          _i1.RouteConfig(HomeScreenRoute.name, path: ''),
          _i1.RouteConfig(TiffinServiceScreenRoute.name,
              path: 'tiffin-services'),
          _i1.RouteConfig(VaccineCenterScreenRoute.name,
              path: 'vaccine-center', guards: [locationGuard]),
          _i1.RouteConfig(SelectLocationScreenRoute.name,
              path: 'select-location'),
          _i1.RouteConfig(VaccineCenterMapScreenRoute.name,
              path: 'vaccine-center-map'),
          _i1.RouteConfig(TiffinServiceMapScreenRoute.name,
              path: 'tiffin-service-map'),
          _i1.RouteConfig(SubscriptionScreenRoute.name, path: 'subscriptions')
        ])
      ];
}

class AppWrapperRoute extends _i1.PageRouteInfo {
  const AppWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AppWrapperRoute';
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '');

  static const String name = 'HomeScreenRoute';
}

class TiffinServiceScreenRoute extends _i1.PageRouteInfo {
  const TiffinServiceScreenRoute() : super(name, path: 'tiffin-services');

  static const String name = 'TiffinServiceScreenRoute';
}

class VaccineCenterScreenRoute extends _i1.PageRouteInfo {
  const VaccineCenterScreenRoute() : super(name, path: 'vaccine-center');

  static const String name = 'VaccineCenterScreenRoute';
}

class SelectLocationScreenRoute extends _i1.PageRouteInfo {
  const SelectLocationScreenRoute() : super(name, path: 'select-location');

  static const String name = 'SelectLocationScreenRoute';
}

class VaccineCenterMapScreenRoute
    extends _i1.PageRouteInfo<VaccineCenterMapScreenRouteArgs> {
  VaccineCenterMapScreenRoute(
      {_i2.Key? key, required _i13.CowinCentersBloc cowinCentersBloc})
      : super(name,
            path: 'vaccine-center-map',
            args: VaccineCenterMapScreenRouteArgs(
                key: key, cowinCentersBloc: cowinCentersBloc));

  static const String name = 'VaccineCenterMapScreenRoute';
}

class VaccineCenterMapScreenRouteArgs {
  const VaccineCenterMapScreenRouteArgs(
      {this.key, required this.cowinCentersBloc});

  final _i2.Key? key;

  final _i13.CowinCentersBloc cowinCentersBloc;
}

class TiffinServiceMapScreenRoute
    extends _i1.PageRouteInfo<TiffinServiceMapScreenRouteArgs> {
  TiffinServiceMapScreenRoute(
      {_i2.Key? key, required _i14.TiffinsBloc tiffinsBloc})
      : super(name,
            path: 'tiffin-service-map',
            args: TiffinServiceMapScreenRouteArgs(
                key: key, tiffinsBloc: tiffinsBloc));

  static const String name = 'TiffinServiceMapScreenRoute';
}

class TiffinServiceMapScreenRouteArgs {
  const TiffinServiceMapScreenRouteArgs({this.key, required this.tiffinsBloc});

  final _i2.Key? key;

  final _i14.TiffinsBloc tiffinsBloc;
}

class SubscriptionScreenRoute extends _i1.PageRouteInfo {
  const SubscriptionScreenRoute() : super(name, path: 'subscriptions');

  static const String name = 'SubscriptionScreenRoute';
}
