import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String cardNumber;
  final String? expiry;
  final String? iconUrl;
  final String? imageUrl;
  final String? statusMessage;
  final bool showDefaultIcon;
  final GestureTapCallback? onTap;

  const CardView({
    super.key,
    required this.cardNumber,
    this.expiry,
    this.iconUrl,
    this.imageUrl,
    this.statusMessage,
    this.showDefaultIcon = true,
    this.onTap,
  });

  static const height = 192.0;
  static const radius = 24.0;

  @override
  Widget build(BuildContext context) {
    final white = context.appColors.static.white;
    final hasStatusMessage =
        statusMessage != null && statusMessage!.trim().isNotEmpty;

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          width: double.infinity,
          height: height,
          color: context.appColors.static.black,
          child: Stack(
            children: [
              Positioned.fill(child: CardViewBackground(imageUrl: imageUrl)),
              const Positioned.fill(child: CardViewPattern()),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hasStatusMessage
                        ? CardStatusBadge(message: statusMessage!)
                        : CardPaymentSystemIcon(
                          iconUrl: iconUrl,
                          showDefaultIcon: showDefaultIcon,
                        ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            cardNumber,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).bodyLg(color: white),
                        ),
                        if (expiry != null) Text(expiry!).bodyLg(color: white),
                      ],
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
