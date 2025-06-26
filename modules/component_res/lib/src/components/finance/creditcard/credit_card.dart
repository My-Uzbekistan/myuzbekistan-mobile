import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CreditCardItem {
  String? amount;
  String? _cardNumber;
  String? _alias;
  String? errorMessage;
  String? iconUrl;
  Color? bgColor;

  CreditCardItem(
      {this.amount,
      String? cardNumber,
      String? alias,
      this.iconUrl,
      this.bgColor,
      this.errorMessage});

  String get alias => _alias ?? "";

  String get maskNumber => _cardNumber ?? "";
}

class CreditCard extends StatelessWidget {
  final CreditCardItem data;

  const CreditCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          color: data.bgColor??context.appColors.fill.secondary,
          constraints: BoxConstraints(minHeight: 88),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                    ).copyWith(left: 20),
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.amount ?? "",
                          style:
                              CustomTypography.H2.copyWith(color: Colors.white),
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Flexible(
                                child: Text(
                              data.alias,
                              style: CustomTypography.bodyMd
                                  .copyWith(color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                            Text(
                              data.maskNumber,
                              style: CustomTypography.bodyMd
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Container(
                    height: 32,
                    width: 64,
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: CachedNetworkImage(
                      imageUrl: data.iconUrl ?? "",
                      errorWidget: (context, url, error) => SizedBox.shrink(),
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              ),
              if ((data.errorMessage ?? "").isNotEmpty)
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: context.appColors.colors.red),
                  child: Text(
                    data.errorMessage!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTypography.bodyMd.copyWith(color: Colors.white),
                  ),
                )
            ],
          ),
        ));
  }
}
