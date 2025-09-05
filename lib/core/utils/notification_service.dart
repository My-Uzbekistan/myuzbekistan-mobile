import 'dart:io';
import 'dart:math';

import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/di/injection.dart';

/// Notification Service singleton
///
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

class NotificationService {
  NotificationService._privateConstructor();

  static final NotificationService _instance =
      NotificationService._privateConstructor();

  factory NotificationService() => _instance;

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final topics = [
    "myuzb_topic_1",
    "myuzb_topic_2",
    "myuzb_topic_3",
    "myuzb_topic_4",
    "myuzb_topic_5",
    "myuzb_topic_6",
    "myuzb_topic_7",
    "myuzb_topic_8",
    "myuzb_topic_9",
    "myuzb_topic_10",
  ];

  Future<NotificationSettings> requestPermission() async {
    return await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<String?> getToken() async {
    return FirebaseMessaging.instance.getToken();
  }

  Future<void> init() async {
    requestPermission();

   final  osVersion = Platform.operatingSystemVersion;
   final  model = Platform.operatingSystem;
   debugPrint("operationStystemsk  ${osVersion} ----  ${model}");
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {});
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        print(
            'Opened app from terminated state: ${message.notification?.title}');
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  }

  Future<void> subscribeToTopic() async {
    final oldTopic = getIt<SecurityStorage>().getTopic();
    final currentTopic = oldTopic ?? topics[Random().nextInt(topics.length)];
    debugPrint("topics $currentTopic");
    await _messaging.subscribeToTopic(currentTopic);
  }
}
