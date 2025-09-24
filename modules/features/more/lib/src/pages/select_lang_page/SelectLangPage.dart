import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class SelectLangPage extends StatefulWidget {
  const SelectLangPage({super.key});

  @override
  State<SelectLangPage> createState() => _SelectLangPageState();
}

class _SelectLangPageState extends State<SelectLangPage> {
  AppSettingsBloc? appSettingsBloc;

  @override
  void initState() {
    super.initState();
    appSettingsBloc = context.read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 20,
            child:
                Theme.of(context).brightness == Brightness.dark
                    ? Assets.logoDarkFullLogo.toSvgImage(
                      fit: BoxFit.contain,
                      height: 32,
                    )
                    : Assets.logoLightFullLogo.toSvgImage(
                      fit: BoxFit.contain,
                      height: 32,
                    ),
          ),
          Center(
            child: BlocListener<AppSettingsBloc, AppSettingsBlocState>(
              listener: (context, state) {
                if (state.appLocale != null) {
                  context.travel.goMain();
                }
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children:
                        AppLocale.values.map((e) {
                          return SizedBox(
                            width: double.infinity,
                            child: AppActionButton(
                              actionText: context.localization.langItemDefault(
                                e.name,
                              ),
                              icon: _flag(e).toSvgImage(),
                              type: ActionButtonType.secondary,
                              iconColorFiltered: false,
                              onPressed: () {
                                appSettingsBloc?.add(
                                  AppSettingsBlocEvent.setLocale(e),
                                );
                              },
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _flag(AppLocale locale) {
    return switch (locale) {
      AppLocale.en => Assets.flagsUk,
      AppLocale.uz => Assets.flagsUz,
      AppLocale.ru => Assets.flagsRu,
    };
  }
}
