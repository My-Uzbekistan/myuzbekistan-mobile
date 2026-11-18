import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';
import 'package:travel/src/di/injection.dart';
import 'package:navigation/navigation.dart';

bool museumRequireAuth(BuildContext context) {
  if (getIt<SecurityStorage>().getAccessToken() != null) return true;
  context.more.pushAuthPage();
  return false;
}
