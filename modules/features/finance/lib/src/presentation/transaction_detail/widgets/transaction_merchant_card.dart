import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class TransactionMerchantCard extends StatelessWidget {
  final MerchantItem merchant;

  const TransactionMerchantCard({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    final type = merchant.type.orEmpty();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.fill.quaternary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        spacing: 12,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 56,
              height: 56,
              color: context.appColors.static.white,
              child: ExtendedImage.network(
                merchant.icon.orEmpty(),
                cache: true,
                cacheMaxAge: const Duration(days: 6),
                fit: BoxFit.cover,
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.completed:
                      return null;
                    default:
                      return ColoredBox(
                        color: context.appColors.fill.quaternary,
                      );
                  }
                },
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                Text(
                  merchant.name.orEmpty(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h3(color: context.appColors.textIconColor.primary),
                if (type.isNotEmpty)
                  Text(
                    type,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodyMd(color: context.appColors.textIconColor.secondary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
