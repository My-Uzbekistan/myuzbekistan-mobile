import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class ForceUpdatePage extends StatefulWidget {
  final String appStoreLink;
  const ForceUpdatePage({super.key,required this.appStoreLink});

  @override
  State<ForceUpdatePage> createState() => _ForceUpdatePageState();
}

class _ForceUpdatePageState extends State<ForceUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ).copyWith(bottom: 8),
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.pngForceUpdate.toImage(
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  Text("Доступна новая версия").h2(),
                  Text(
                    "Доступны новые функции и усилена безопасность. Рекомендуем обновить приложение",
                    textAlign: TextAlign.center,
                  ).bodyMd(),
                ],
              ),
              Expanded(
                child: Column(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppActionButton(
                      actionText: "Обновить приложение",
                      onPressed: () {
                        VersionChecker.launchAppStore(widget.appStoreLink);
                      },
                    ),
                    AppActionButton(
                      actionText: "Обновить позже",
                      type: ActionButtonType.text,
                      onPressed: () {
                        context.go(AppNavPath.travel.travelHome.path);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
