import 'package:auto_route/auto_route.dart';
import 'package:co_helper/presentation/routes/routes_guard.dart';
import 'package:co_helper/presentation/screens/app_wrapper.dart';
import 'package:co_helper/presentation/screens/home.dart';
import 'package:co_helper/presentation/screens/select_location/select_location.dart';
import 'package:co_helper/presentation/screens/subscription/subscription_screen.dart';
import 'package:co_helper/presentation/screens/tiffin/map_view/map_screen.dart';
import 'package:co_helper/presentation/screens/tiffin/tiffin_service_screen.dart';
import 'package:co_helper/presentation/screens/vaccine_center/map_view/map_screen.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_center.dart';
import 'package:co_helper/utility/transitions/page_transition.dart';

@CustomAutoRouter(
  durationInMilliseconds: 200,
  transitionsBuilder: pageTransition,
  replaceInRouteName: 'Page,Route,Screen',
  routes: [
    AutoRoute(
      path: "/",
      page: AppWrapper,
      children: [
        AutoRoute(
          path: "",
          page: HomeScreen,
          initial: true,
        ),
        AutoRoute(
          path: "tiffin-services",
          page: TiffinServiceScreen,
        ),
        AutoRoute(
          guards: [LocationGuard],
          path: "vaccine-center",
          page: VaccineCenterScreen,
        ),
        AutoRoute(
          path: "select-location",
          page: SelectLocationScreen,
        ),
        AutoRoute(
          path: "vaccine-center-map",
          page: VaccineCenterMapScreen,
        ),
        AutoRoute(
          path: "tiffin-service-map",
          page: TiffinServiceMapScreen,
        ),
        AutoRoute(
          path: "subscriptions",
          page: SubscriptionScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
