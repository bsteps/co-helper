import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _onBackgroundMessageHandler(RemoteMessage message) async {
  print('on background message handler $message');
}

class FirebaseMessagingService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;
  static String? token;

  /// Create a [AndroidNotificationChannel] for heads up notifications
  AndroidNotificationChannel? channel;

  /// Initialize the [FlutterLocalNotificationsPlugin] package.
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  Future<void> initialize() async {
    await Firebase.initializeApp();

    _onBackgroundMessage();

    await _firebaseMessaging.requestPermission(
      announcement: true,
      carPlay: true,
      criticalAlert: true,
    );

    await _onOpenedAppFromTerminateMessage();

    if (!kIsWeb) {
      channel = const AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        'This channel is used for important notifications.', // description
        importance: Importance.high,
      );

      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('@drawable/ic_notification');

      final IOSInitializationSettings initializationSettingsIOS =
          IOSInitializationSettings(
        onDidReceiveLocalNotification: (_, __, ___, ____) async {},
      );

      final InitializationSettings initializationSettings =
          InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );

      flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      flutterLocalNotificationsPlugin!.initialize(initializationSettings,
          onSelectNotification: (payload) async {
        if (await canLaunch('https://selfregistration.cowin.gov.in')) {
          await launch('https://selfregistration.cowin.gov.in');
        }
        print('on local notification opended App message $payload');
      });

      /// Create an Android Notification Channel.
      ///
      /// We use this channel in the `AndroidManifest.xml` file to override the
      /// default FCM channel to enable heads up notifications.
      await flutterLocalNotificationsPlugin!
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel!);

      await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    await _setToken();

    _onFrontEndMessage();

    _onOpenedAppMessage();
  }

  void _onBackgroundMessage() {
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessageHandler);
  }

  Future<void> _onOpenedAppFromTerminateMessage() async {
    final initialMessage = await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      if (await canLaunch('https://selfregistration.cowin.gov.in')) {
        await launch('https://selfregistration.cowin.gov.in');
      }
      print('on teminated opended App message $initialMessage');
    }
  }

  void _onOpenedAppMessage() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      if (await canLaunch('https://selfregistration.cowin.gov.in')) {
        await launch('https://selfregistration.cowin.gov.in');
      }
      print('on frontend opended App message $message');
    });
  }

  void _onFrontEndMessage() {
    FirebaseMessaging.onMessage.listen((message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null &&
          android != null &&
          !kIsWeb &&
          flutterLocalNotificationsPlugin != null &&
          channel != null) {
        flutterLocalNotificationsPlugin!.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel!.id,
              channel!.name,
              channel!.description,
              largeIcon: DrawableResourceAndroidBitmap("ic_splash"),
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              icon: "@drawable/ic_notification",
            ),
          ),
        );
      }
    });
  }

  Future _setToken() async {
    token = await _firebaseMessaging.getToken();

    _firebaseMessaging.onTokenRefresh.listen((newToken) {
      token = newToken;
    });
  }
}
