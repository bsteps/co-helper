import 'package:auto_route/auto_route.dart';
import 'package:co_helper/logic/connectivity/cubit/connectivity_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, NetworkStatus>(
      listener: (context, state) {
        ScaffoldMessengerState scaffoldMessenger =
            ScaffoldMessenger.of(context);
        final connectivityCubit = context.read<ConnectivityCubit>();
        if (state == NetworkStatus.no_internet) {
          connectivityCubit.controller = scaffoldMessenger.showSnackBar(
            const SnackBar(
              content: Text('No Internet'),
              duration: Duration(days: 365),
            ),
          );
        }

        if (state == NetworkStatus.connected &&
            connectivityCubit.controller != null) {
          connectivityCubit.controller!.close();
        }
      },
      child: AutoRouter(),
    );
  }
}
