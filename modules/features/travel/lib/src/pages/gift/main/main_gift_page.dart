import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';
import 'package:travel/src/pages/gift/bloc/gift_bloc.dart';

class MainGiftPage extends StatefulWidget {
  const MainGiftPage({super.key});

  @override
  State<MainGiftPage> createState() => _MainGiftPageState();
}

class _MainGiftPageState extends State<MainGiftPage> {
  GiftBloc? _giftBloc;

  final storage = getIt<SecurityStorage>();
  bool isUtcClient = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _giftBloc = context.read<GiftBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return BlocListener<GiftBloc, GiftBlocState>(
      listenWhen:
          (previous, current) =>
              current.activeClaim != null || current.errorMessage != null,
      listener: (context, state) {
        if (state.errorMessage != null) {
          InfoAlertDialog.show(
            context,
            message: state.errorMessage,
            type: InfoAlertType.error,
          );
        } else {
          context.pop();
          if (state.activeClaim != null) {
            showClaimDialog(context, state.activeClaim!);
            _giftBloc?.add(GiftBlocEvent.clearActiveGift());
          }
        }
      },

      child:
      Scaffold(
                extendBody: true,
                backgroundColor: Color(0xff00B93F),
                bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ).copyWith(bottom: padding.bottom + 4),

                  child: AppActionButton(
                    actionText: context.localization.gift_page_action,
                    onPressed: () {
                      _giftBloc?.add(GiftBlocEvent.activeGift());
                    },
                    containerColor: Colors.white,
                    contentColor: context.appColors.brand,
                  ),
                ),
                body: Stack(
                  children: [
                    Positioned(
                      top: padding.top + 2,
                      right: 16,
                      child: RoundedButton.closeButton(
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffADEE5C),
                            ),
                            width: double.maxFinite,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.localization.gift_page_title,
                            textAlign: TextAlign.center,
                          ).h1(color: Colors.white),
                          Assets.png.imgGiftBig.image(),
                          Text(
                            context.localization.gift_page_subtitle,
                          ).bodyMd(color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}

void showClaimDialog(BuildContext context, ClaimHistory claim) {
  showDialog(
    context: context,
    builder: (context) => ClaimDialog(claimHistory: claim),
  );
}

class ClaimDialog extends StatefulWidget {
  final ClaimHistory claimHistory;

  const ClaimDialog({super.key, required this.claimHistory});

  @override
  State<ClaimDialog> createState() => _ClaimDialogState();
}

class _ClaimDialogState extends State<ClaimDialog> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((p) {
      Future.delayed(const Duration(seconds: 3), () {
        if (context.canPop()) {
          context.pop();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.png.imgGiftSmall.image(width: 80),
            Column(
              spacing: 10,
              children: [
                Text(
                  widget.claimHistory
                      .size()
                      .plus(" ")
                      .plus(
                        widget.claimHistory.isGB
                            ? context.localization.gb
                            : context.localization.mb,
                      ),
                ).h1(),
                Text(
                  context.localization.claim_dialog_caption,
                  textAlign: TextAlign.center,
                ).bodyMd(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
