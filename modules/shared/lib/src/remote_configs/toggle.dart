import 'package:firebase_remote_config/firebase_remote_config.dart';

mixin Toggle {
  static bool get giftToggle => FirebaseRemoteConfig.instance.getBool("gift_toggle");
}
