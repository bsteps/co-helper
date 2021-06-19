import 'package:co_helper/constants/app_colors.dart';
import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository.dart';
import 'package:co_helper/data/repositories/cowin_centers_repository/cowin_centers_repository_contract.dart';
import 'package:co_helper/data/repositories/cowin_districts_repository/cowin_districts_repository.dart';
import 'package:co_helper/data/repositories/cowin_districts_repository/cowin_districts_repository_contract.dart';
import 'package:co_helper/data/repositories/cowin_states_repository/cowin_states_repository.dart';
import 'package:co_helper/data/repositories/cowin_states_repository/cowin_states_repository_contract.dart';
import 'package:co_helper/data/repositories/subscriptions_respository/subscriptions_repository.dart';
import 'package:co_helper/data/repositories/subscriptions_respository/subscriptions_repository_contract.dart';
import 'package:co_helper/data/repositories/tiffins_repository/tiffins_repository.dart';
import 'package:co_helper/data/repositories/tiffins_repository/tiffins_repository_contract.dart';
import 'package:co_helper/logic/connectivity/cubit/connectivity_cubit.dart';
import 'package:co_helper/logic/location/bloc/location_bloc.dart';
import 'package:co_helper/presentation/routes/routes.gr.dart';
import 'package:co_helper/presentation/routes/routes_guard.dart';
import 'package:co_helper/presentation/widgets/material_ink_splash.dart';
import 'package:co_helper/utility/services/firebase_messaging_service.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: implementation_imports
import 'package:flutter_bloc/src/repository_provider.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: kIsWeb
  //       ? HydratedStorage.webStorageDirectory
  //       : await getTemporaryDirectory(),
  // );
  await FlutterConfig.loadEnvVariables();

  await FirebaseMessagingService().initialize();

  SharedPreferences _prefs = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return _AppWrapper(
            prefs: _prefs,
            scaffoldMessengerKey: scaffoldMessengerKey,
            repositories: [
              RepositoryProvider<FirebaseMessaging>(
                create: (context) => FirebaseMessaging.instance,
              ),
              RepositoryProvider<SharedPreferences>(
                create: (context) => _prefs,
              ),
              RepositoryProvider<CowinCentersRepositoryContract>(
                create: (context) => CowinCentersRepository(),
              ),
              RepositoryProvider<CowinDistrictsRepositoryContract>(
                create: (context) => CowinDistrictsRepository(),
              ),
              RepositoryProvider<CowinStatesRepositoryContract>(
                create: (context) => CowinStatesRepository(),
              ),
              RepositoryProvider<TiffinsRepositoryContract>(
                create: (context) => TiffinsRepository(),
              ),
              RepositoryProvider<SubscriptionsRepositoryContract>(
                create: (context) => SubscriptionsRepository(),
              ),
            ],
          );
        }));
  });
}

class _AppWrapper extends StatelessWidget {
  final SharedPreferences prefs;
  final List<RepositoryProviderSingleChildWidget> repositories;
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const _AppWrapper({
    Key? key,
    required this.prefs,
    required this.repositories,
    required this.scaffoldMessengerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MultiRepositoryProvider(
        providers: repositories,
        child: Builder(builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<LocationBloc>(
                create: (context) => LocationBloc(
                  context: context,
                  centersRepository: RepositoryProvider.of(context),
                  districtsRepository: RepositoryProvider.of(context),
                  statesRepository: RepositoryProvider.of(context),
                  subscriptionsRepository: RepositoryProvider.of(context),
                ),
              ),
              BlocProvider<ConnectivityCubit>(
                create: (context) => ConnectivityCubit(),
              ),
            ],
            child: MyApp(
              scaffoldMessengerKey: scaffoldMessengerKey,
            ),
          );
        }),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const MyApp({
    Key? key,
    required this.scaffoldMessengerKey,
  }) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter appRouter;

  @override
  void initState() {
    appRouter = AppRouter(locationGuard: LocationGuard(context: context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: widget.scaffoldMessengerKey,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
        primaryColor: AppColors.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        splashFactory: MaterialInkSplash.splashFactory,
        highlightColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          elevation: 2,
          titleSpacing: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
    );
  }
}
