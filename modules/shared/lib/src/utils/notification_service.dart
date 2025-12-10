import 'dart:io';
import 'dart:math';

import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/di/injection.dart';

/// Notification Service singleton
///

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

  void logRemoteMessage(RemoteMessage message) {
    debugPrint("🔔 RemoteMessage:");
    debugPrint("From: ${message.from}");
    debugPrint("CollapseKey: ${message.collapseKey}");
    debugPrint("MessageId: ${message.messageId}");
    debugPrint("MessageType: ${message.messageType}");
    debugPrint("SentTime: ${message.sentTime}");
    debugPrint("ThreadId: ${message.threadId}");
    debugPrint("TTL: ${message.ttl}");

    // Notification qismi
    if (message.notification != null) {
      final n = message.notification!;
      debugPrint("Notification:");
      debugPrint("  Title: ${n.title}");
      debugPrint("  Body: ${n.body}");
      debugPrint("  Android Channel: ${n.android?.channelId}");
      debugPrint("  Apple Subtitle: ${n.apple?.subtitle}");
    }
    // Data qismi
    if (message.data.isNotEmpty) {
      debugPrint("Data:");
      message.data.forEach((key, value) {
        debugPrint("  $key: $value");
      });
    }
  }

  void listenNotification({
    required void Function(RemoteMessage) logRemoteMessage,
  }) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {

      debugPrint("Notification Message ${message.data} ");
      logRemoteMessage(message);
    });
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        logRemoteMessage.call(message);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      logRemoteMessage.call(message);
    });
  }
  Future<void> init() async {
    requestPermission();

  }

  Future<void> subscribeToTopic() async {
    final oldTopic = getIt<SecurityStorage>().getTopic();
    final currentTopic = oldTopic ?? topics[Random().nextInt(topics.length)];
    debugPrint("currentTopic $currentTopic");
    await _messaging.subscribeToTopic(currentTopic);
    await getIt<SecurityStorage>().setTopic(currentTopic);
  }
}
