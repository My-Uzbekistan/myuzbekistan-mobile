import 'dart:async';
import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/more.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/profile_page/pages/change_locale.dart';
import 'package:more/src/widgets/auth_background.dart';
import 'package:more/src/widgets/staggered_fade_slide.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import 'bloc/auth_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  AppSettingsBloc? appSettingsBloc;

  AuthBlock? authBlock;

  // Welcome kontenti navbatma-navbat chiqib paydo bo'lishi uchun.
  late final AnimationController _enterController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    appSettingsBloc = context.read<AppSettingsBloc>();
    authBlock = context.read<AuthBlock>();

    _enterController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 560),
    )..forward();
  }

  Completer<bool>? completer;

  void listenPhoneAuthCompleter(BuildContext context) {
    if (completer != null && !completer!.isCompleted) {
      completer!.complete(false);
    }
    completer = Completer<bool>();

    completer?.future.then((result) {
      if (result) {
        GlobalHandler().refreshListener?.call();
        authBlock?.add(AuthEvent.setFireBaseToken());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.systemUiOverlyStyle.copyWith(
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
      ),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: context.systemUiOverlyStyle.copyWith(
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          actions: [
            if (!context.canPop())
              IconButton(
                onPressed: () {
                  context.more.pushChangeLanguagePage();
                },
                icon: SizedBox(
                  child: appSettingsBloc?.state.appLocale?.flag.toSvgImage(),
                ),
              ),
          ],
        ),
        body: AuthBackground(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: BlocConsumer<AuthBlock, AuthState>(
              listener: (previous, current) {
                if (current is AuthSuccessState) {
                  GlobalHandler().refreshListener?.call();
                }
              },
              builder: (context, state) {
                return IgnorePointer(
                  ignoring:
                      state is AuthAppleLoadingState ||
                      state is AuthGoogleLoadingState,
                  child: SafeArea(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ).copyWith(bottom: 24),
                      child: StaggeredFadeSlide(
                        animation: _enterController,
                        entering: true,
                        offset: const Offset(0, 40),
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Assets.logo.darkLogo.svg(
                                height: 32,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              context.localization.welcomeTitle,
                              style: CustomTypography.H1.copyWith(
                                color: Colors.white.withValues(alpha: 0.6),
                              ),
                            ),
                          ),
                          AppActionButton(
                            actionText:
                                context.localization.auth_page_action_phone,
                            iconColorFiltered: false,
                            icon: Assets.svg.icPhone.svg(),
                            containerColor: Colors.white,
                            disableContainerColor: Colors.white,
                            contentColor: Colors.black,
                            type: ActionButtonType.secondary,
                            onPressed: () {
                              listenPhoneAuthCompleter(context);
                              context.pushNamed(
                                AppNavPath.more.authPhonePage.name,
                                extra: completer,
                              );
                            },
                          ),
                          AppActionButton(
                            actionText: context.localization.continueWithGoogle,
                            iconColorFiltered: false,
                            icon: Assets.svg.googleLogo.svg(),
                            isLoading: state is AuthGoogleLoadingState,
                            containerColor: Colors.white,
                            disableContainerColor: Colors.white,
                            contentColor: Colors.black,
                            type: ActionButtonType.secondary,
                            onPressed: () {
                              context.read<AuthBlock>().add(
                                AuthEvent.authByGoogle(),
                              );
                            },
                          ),
                          if (Platform.isIOS)
                            AppActionButton(
                              actionText:
                                  context.localization.continueWithApple,
                              iconColorFiltered: false,
                              type: ActionButtonType.secondary,
                              containerColor: Colors.white,
                              disableContainerColor: Colors.white,
                              contentColor: Colors.black,
                              icon: Assets.svg.appleLogo.svg(),
                              isLoading: state is AuthAppleLoadingState,
                              onPressed: () {
                                context.read<AuthBlock>().add(
                                  AuthEvent.authByApple(),
                                );
                              },
                            ),
                          AppActionButton(
                            actionText: context.localization.continueAsGuest,
                            iconColorFiltered: false,
                            type: ActionButtonType.text,
                            contentColor: Colors.white,
                            onPressed: () {
                              if (context.canPop()) {
                                context.pop();
                              } else {
                                context.travel.goMain();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _enterController.dispose();
    super.dispose();
  }
}
