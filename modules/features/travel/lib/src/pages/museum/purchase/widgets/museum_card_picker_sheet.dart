import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class MuseumCardPickerSheet extends StatelessWidget {
  const MuseumCardPickerSheet({super.key, required this.cards});

  final List<CardItem> cards;

  static Future<CardItem?> show(
    BuildContext context, {
    required List<CardItem> cards,
  }) {
    return showModalBottomSheet<CardItem>(
      context: context,
      useSafeArea: true,
      backgroundColor: context.appColors.background.elevation1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => MuseumCardPickerSheet(cards: cards),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          const Center(child: SheetGrabber()),
          Text(
            context.localization.museum_purchase_select_card,
          ).h3(color: context.appColors.textIconColor.primary),
          if (cards.isEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Text(
                  context.localization.museum_purchase_no_cards,
                ).bodyMd(color: context.appColors.textIconColor.secondary),
                SizedBox(
                  width: double.infinity,
                  child: AppActionButton(
                    actionText: context.localization.museum_purchase_add_card,
                    onPressed: () {
                      context.pop();
                      context.finance.pushAddCardPage();
                    },
                  ),
                ),
              ],
            )
          else
            for (final card in cards)
              CellCardItem(
                text: card.cardTitle,
                iconUrl: card.icon,
                statusMessage: card.statusMessage,
                onTap: () => context.pop(card),
              ),
        ],
      ),
    );
  }
}
