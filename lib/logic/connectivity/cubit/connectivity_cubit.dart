import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

enum NetworkStatus {
  connected,
  no_internet,
}

class ConnectivityCubit extends Cubit<NetworkStatus> {
  late final StreamSubscription<ConnectivityResult> subscription;
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? controller;

  ConnectivityCubit() : super(NetworkStatus.connected) {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        this.emit(NetworkStatus.no_internet);
      } else {
        this.emit(NetworkStatus.connected);
      }
    });
  }

  // Be sure to cancel subscription after you are done
  @override
  close() async {
    super.close();

    subscription.cancel();
  }
}
