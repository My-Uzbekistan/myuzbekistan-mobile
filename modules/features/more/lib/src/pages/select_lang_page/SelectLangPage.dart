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
      appBar: AppBar(),
      body: Center(
        child: BlocListener<AppSettingsBloc, AppSettingsBlocState>(
          listener: (context, state) {
            debugPrint("setLocaleNavigation ${state.appLocale}");
            if (state.appLocale != null) {
              context.travel.goMain();
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 56,
                children: [
                  Theme.of(context).brightness == Brightness.dark
                      ? Assets.logoDarkFullLogo.toSvgImage(
                        fit: BoxFit.contain,
                        height: 32,
                      )
                      : Assets.logoLightFullLogo.toSvgImage(
                        fit: BoxFit.contain,
                        height: 32,
                      ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children:
                        AppLocale.values.map((e) {
                          return SizedBox(
                            width: double.infinity,
                            child: FilledButton.tonalIcon(
                              style: FilledButton.styleFrom(
                                backgroundColor:
                                    context.appColors.fill.quaternary,
                                foregroundColor:
                                    context.appColors.textIconColor.primary,
                                elevation: 0,
                                minimumSize: Size.fromHeight(56),

                                textStyle: CustomTypography.bodyLg,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                appSettingsBloc?.add(
                                  AppSettingsBlocEvent.setLocale(e),
                                );
                              },
                              icon: _flag(e).toSvgImage(),
                              label: Text(
                                context.localization.langItemDefault(e.name),
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _flag(AppLocale locale) {
    return switch (locale) {
      AppLocale.en => Assets.svgIconFlagUk,
      AppLocale.uz => Assets.svgIconFlagUz,
      AppLocale.ru => Assets.svgIconFlagRu,
    };
  }
}
