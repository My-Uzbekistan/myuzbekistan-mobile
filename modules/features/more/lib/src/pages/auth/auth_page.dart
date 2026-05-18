import 'dart:async';
import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/more.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/profile_page/pages/change_locale.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import 'bloc/auth_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AppSettingsBloc? appSettingsBloc;

  AuthBlock? authBlock;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    appSettingsBloc = context.read<AppSettingsBloc>();
    authBlock = context.read<AuthBlock>();
  }

  Completer<bool>? completer;

  void listenPhoneAuthCompleter(BuildContext context) {
    completer?.complete(false);
    completer = Completer<bool>();

    completer?.future.then((result) {
      if(result) {
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

        body: Stack(
          children: [
            Positioned.fill(
              child: Assets.splash.loginBg.image(fit: BoxFit.cover),
            ),

            Positioned(
              left: 0,
              right: 0,
              top: kToolbarHeight + MediaQuery.of(context).padding.top + 20,
              child: Assets.logo.darkLogo.svg(fit: BoxFit.contain),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                        ).copyWith(bottom: 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 12,
                              children: [
                                AppActionButton(
                                  actionText:
                                      context
                                          .localization
                                          .auth_page_action_phone,
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
                                  actionText:
                                      context.localization.continueWithGoogle,
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
                                  actionText:
                                      context.localization.continueAsGuest,
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
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
