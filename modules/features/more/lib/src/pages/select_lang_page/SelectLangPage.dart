import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/more.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/widgets/auth_background.dart';
import 'package:more/src/widgets/staggered_fade_slide.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class SelectLangPage extends HookWidget {
  const SelectLangPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingsBloc = context.read<AppSettingsBloc>();

    // Bitta controller ikki bosqichni boshqaradi:
    //  - ochilganda (entering=true): kontent tepadan pastga, navbatma-navbat,
    //    opacity bilan paydo bo'ladi.
    //  - til tanlanganda (entering=false): xuddi shu tartibda pastga tushib
    //    yo'qoladi. Animatsiya tugagach setLocale yuboriladi.
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 520),
    );
    final entering = useState<bool>(true);
    final pendingLocale = useState<AppLocale?>(null);

    useEffect(() {
      controller.forward(); // ochilish animatsiyasi

      void statusListener(AnimationStatus status) {
        if (status == AnimationStatus.completed &&
            !entering.value &&
            pendingLocale.value != null) {
          appSettingsBloc.add(
            AppSettingsBlocEvent.setLocale(pendingLocale.value!),
          );
        }
      }

      controller.addStatusListener(statusListener);
      return () => controller.removeStatusListener(statusListener);
    }, [controller]);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.systemUiOverlyStyle.copyWith(
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: AuthBackground(
          child: BlocListener<AppSettingsBloc, AppSettingsBlocState>(
            listener: (context, state) {
              if (state.appLocale != null) {
                context.travel.goMain();
              }
            },
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ).copyWith(bottom: 24),
                child: StaggeredFadeSlide(
                  animation: controller,
                  entering: entering.value,
                  // ochilish — tepadan (subtil), yo'qolish — pastga tushib
                  offset:
                      entering.value
                          ? const Offset(0, -28)
                          : const Offset(0, 48),
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        context.localization.selectLanguageTitle,
                        style: CustomTypography.H2.copyWith(
                          color: context.appColors.service.onMedia
                              .withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                    for (final locale in AppLocale.values)
                      AppActionButton(
                        actionText: context.localization.langItemDefault(
                          locale.name,
                        ),
                        icon: _flag(locale).toSvgImage(),
                        type: ActionButtonType.secondary,
                        sizeType: ActionButtonSizeType.large,
                        iconColorFiltered: false,
                        containerColor: context.appColors.service.onMedia,
                        contentColor: context.appColors.service.scrim,
                        onPressed: () {
                          if (controller.isAnimating ||
                              pendingLocale.value != null) {
                            return;
                          }
                          pendingLocale.value = locale;
                          entering.value = false; // yo'qolish bosqichiga o'tish
                          controller
                            ..reset()
                            ..forward();
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _flag(AppLocale locale) {
    return switch (locale) {
      AppLocale.en => Assets.flags.uk.path,
      AppLocale.uz => Assets.flags.uz.path,
      AppLocale.ru => Assets.flags.ru.path,
    };
  }
}
