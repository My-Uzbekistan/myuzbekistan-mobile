import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';

/// Katalog (catalog-v3) elementi bosilganda bajariladigan yagona harakat.
///
/// - `upcoming` bo'lsa — "tez orada" toast.
/// - `action` bo'sh bo'lsa — hech narsa.
/// - aks holda — havolani ochadi: ilova ichidagi route, webview yoki tashqi
///   brauzer ([CatalogActionType]ga qarab).
void openCatalogItem(BuildContext context, CatalogItemModel item) {
  if (item.status == CatalogStatus.upcoming) {
    Fluttertoast.showToast(
      gravity: ToastGravity.BOTTOM,
      msg: context.localization.catalogItemStatusSoon,
      textColor: context.appColors.textIconColor.primary,
      backgroundColor: context.appColors.background.elevation2,
    );
    return;
  }

  final action = item.action.orEmpty();
  if (action.isEmpty) return;

  final securityStorage = getIt<SecurityStorage>();
  var uri = Uri.parse(action.trim());

  if (item.actionType == CatalogActionType.inner) {
    if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty ||
        uri.host.isEmpty) {
      uri = uri.replace(
        queryParameters: {...uri.queryParameters, "title": item.title},
      );
      context.push(uri.toString());
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
    LauncherUtils.urlLauncher(item.action!);
  }
}
