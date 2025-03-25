import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/presentaion/auth/bloc/auth_bloc.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 32),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    context.localizations!.getStarted,
                      style: CustomTypography.H2,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
context.localizations!.getStartedDescription,
                      style: CustomTypography.bodyMd.copyWith(
                          color: context.appColors.textIconColor.secondary),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 48),
                            maximumSize: Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            backgroundColor: context.appColors.fill.quaternary,
                            elevation: 0,
                            foregroundColor:
                                context.appColors.textIconColor.primary,
                            shadowColor: Colors.transparent),
                        icon: Assets.svgGoogleLogo.toSvgImage(),
                        onPressed: () {
                          context.read<AuthBlock>().add(AuthEvent.authByGoogle());
                        },
                        label: state is AuthLoadingState
                            ? SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(),
                              )
                            : Text(context.localizations!.continueWithGoogle))
                  ]),
            );
          })
        ],
      ),
    );
  }
}
