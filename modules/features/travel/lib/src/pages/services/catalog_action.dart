import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';
import 'package:travel/src/premium/widgets/premium_alert_dialog.dart';

Future<void> openCatalogItem(
  BuildContext context,
  CatalogItemModel item,
) async {
  if (item.status == CatalogStatus.upcoming) {
    Fluttertoast.showToast(
      gravity: ToastGravity.BOTTOM,
      msg: context.localization.catalogItemStatusSoon,
      textColor: context.appColors.textIconColor.primary,
      backgroundColor: context.appColors.background.elevation2,
    );
    return;
  }

  if (!await _hasAccess(context, item)) return;
  if (!context.mounted) return;

  _launch(context, item);
}

Future<bool> _hasAccess(BuildContext context, CatalogItemModel item) async {
  final catalogId = item.id;
  if (!(item.isPremiumOnly ?? false) || catalogId == null) return true;

  if (getIt<SecurityStorage>().getAccessToken() == null) {
    context.more.pushAuthPage();
    return false;
  }

  try {
    final access = await getIt<PremiumRepository>().checkAccess(catalogId);
    if (!context.mounted) return false;
    if (access.canAccess) return true;

    if (access.reason == PremiumAccessReason.UserNotFound) {
      context.more.pushAuthPage();
      return false;
    }

    final limit = access.limit;
    final usageCount = access.usageCount;
    if (limit != null && usageCount != null && usageCount >= limit) {
      PremiumAlertDialog.showLimitReached(context);
    } else {
      PremiumAlertDialog.showPremiumRequired(context);
    }
    return false;
  } catch (e) {
    if (context.mounted) Toast.showToast(e.toString());
    return false;
  }
}

void _launch(BuildContext context, CatalogItemModel item) {
  final action = item.action.orEmpty();
  if (action.isEmpty) return;

  final securityStorage = getIt<SecurityStorage>();
  var uri = Uri.parse(action.trim());

  if (item.actionType == CatalogActionType.inner) {
    if (AppLinkRouter.locationOf(uri) != null) {
      uri = uri.replace(
        queryParameters: {
          ...uri.queryParameters,
          "title": item.title,
          "authRequired": "${item.authRequired}",
        },
      );
      AppLinkRouter.open(uri.toString());
    } else {
      if (item.authRequired) {
        uri = uri.replace(
          queryParameters: {
            ...uri.queryParameters,
            "theme": context.brightness.name,
          },
        );
      }
      context.more.pushWebViewPage(
        actionUrl: uri.toString(),
        authRequired: item.authRequired,
      );
    }
  } else {
    if (item.authRequired) {
      uri = uri.replace(
        queryParameters: {
          ...uri.queryParameters,
          "token": securityStorage.getAccessToken(),
        },
      );
    }
    context.more.openUrl(uri.toString());
  }
}
