import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();
  final _androidChannel = const AndroidNotificationChannel(
    'high_importance_channel',
    'MyUzbekistan',
    importance: Importance.high,
  );
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
    required void Function(RemoteMessage) onOpened,
  }) {
    void open(RemoteMessage message) {
      logRemoteMessage(message);
      onOpened(message);
    }

    _prepareForegroundDisplay(open);
    FirebaseMessaging.onMessage.listen((message) {
      logRemoteMessage(message);
      _showForeground(message);
    });
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) open(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen(open);
  }
  Future<void> _prepareForegroundDisplay(
    void Function(RemoteMessage) open,
  ) async {
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    if (!Platform.isAndroid) return;
    await _localNotifications.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      ),
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload == null) return;
        open(RemoteMessage(data: Map<String, dynamic>.from(jsonDecode(payload))));
      },
    );
    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(_androidChannel);
  }

  void _showForeground(RemoteMessage message) {
    final notification = message.notification;
    if (!Platform.isAndroid || notification == null) return;
    _localNotifications.show(
      id: message.messageId.hashCode,
      title: notification.title,
      body: notification.body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          _androidChannel.id,
          _androidChannel.name,
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
      payload: jsonEncode(message.data),
    );
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

  Future<void> unsubscribeFromTopic() async {
    final topic = getIt<SecurityStorage>().getTopic();
    if (topic == null) return;
    debugPrint("unsubscribing from topic $topic");
    await _messaging.unsubscribeFromTopic(topic);
  }
}
