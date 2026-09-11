import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/widgets/content_section.dart';

class GlobalSearchMerchants extends StatelessWidget {
  final SearchMerchantsBlock block;
  final ValueChanged<SearchMerchant> onMerchantTap;

  const GlobalSearchMerchants({
    super.key,
    required this.block,
    required this.onMerchantTap,
  });

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: block.title,
      child: SizedBox(
        height: 114,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: block.items.length,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) => _card(context, block.items[index]),
        ),
      ),
    );
  }

  Widget _card(BuildContext context, SearchMerchant merchant) {
    final colors = context.appColors;
    final type = merchant.type;
    final showType =
        type != null &&
        type.isNotEmpty &&
        type.toLowerCase() != merchant.name.toLowerCase();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onMerchantTap(merchant),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: colors.fill.quaternary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 40,
                height: 40,
                color: colors.static.white,
                child: AppNetworkImage(
                  merchant.logo ?? "",
                  cacheMaxAge: const Duration(days: 6),
                  fit: BoxFit.cover,
                  placeholder: ColoredBox(color: colors.fill.quaternary),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  merchant.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: colors.textIconColor.primary),
                if (showType)
                  Text(
                    type,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodySm(color: colors.textIconColor.secondary),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
