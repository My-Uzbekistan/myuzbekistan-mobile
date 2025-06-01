import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:shared/shared.dart';

import 'bloc/auth_bloc.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        children: [
          BlocConsumer<AuthBlock, AuthState>(listener: (previous, current) {
            if (current is AuthSuccessState) {
              // context.read<ProfileBloc>().add(ProfileBlocEvent.loadEvent());
              Navigator.pop(context);
            }
          }, builder: (context, state) {
            return Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 32),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localization.getStarted,
                      style: CustomTypography.H2,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      context.localization.getStartedDescription,
                      style: CustomTypography.bodyMd.copyWith(
                          color: context.appColors.textIconColor.secondary),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 48),
                                maximumSize: Size(double.infinity, 48),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                backgroundColor:
                                    context.appColors.fill.quaternary,
                                elevation: 0,
                                foregroundColor:
                                    context.appColors.textIconColor.primary,
                                shadowColor: Colors.transparent),
                            icon: Assets.svgGoogleLogo.toSvgImage(),
                            onPressed: () {
                              context
                                  .read<AuthBlock>()
                                  .add(AuthEvent.authByGoogle());
                            },
                            label: state is AuthGoogleLoadingState
                                ? SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: LoadingIndicator(),
                                  )
                                : Text(
                                    context.localization.continueWithGoogle)),
                        if (Platform.isIOS)
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 48),
                                  maximumSize: Size(double.infinity, 48),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor:
                                      context.appColors.fill.quaternary,
                                  elevation: 0,
                                  foregroundColor:
                                      context.appColors.textIconColor.primary,
                                  shadowColor: Colors.transparent),
                              icon: Assets.svgAppleLogo.toSvgImage(),
                              onPressed: () {
                                context
                                    .read<AuthBlock>()
                                    .add(AuthEvent.authByApple());
                              },
                              label: state is AuthAppleLoadingState
                                  ? SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: LoadingIndicator(),
                                    )
                                  : Text(context
                                      .localization.continueWithApple)),
                      ],
                    )
                  ]),
            );
          })
        ],
      ),
    );
  }
}
