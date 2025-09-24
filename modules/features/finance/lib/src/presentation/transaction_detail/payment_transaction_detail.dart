import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/transaction_detail/bloc/payment_check_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentTransactionDetail extends StatefulWidget {
  const PaymentTransactionDetail({super.key});

  @override
  State<PaymentTransactionDetail> createState() =>
      _PaymentTransactionDetailState();
}

class _PaymentTransactionDetailState extends State<PaymentTransactionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        title: context.localization.payment_details,
        automaticallyImplyLeading: false,
        actions: [
          RoundedButton.closeButton(
            onPressed: () {
              context.pop();
            },
          ),
        ],
      ),
      body: BlocConsumer<PaymentCheckBloc, PaymentCheckState>(
        listener: (context, state) {
          if (state is PaymentCheckError) {
            showActionAlertDialog(
              context,
              message: state.message,
              barrierDismissible: false,
              onFirstButtonClick: () {
                context.pop();
              },
            );
          }
        },
        listenWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.when(
            loading: () {
              return LoadingContent();
            },
            loaded: (transaction) {
              return SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                    width: double.maxFinite,

                    padding: EdgeInsets.all(
                      16,
                    ).copyWith(bottom: kBottomNavigationBarHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          spacing: 16,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Container(
                                color: context.appColors.fill.quaternary,
                                child: ExtendedImage.network(
                                  transaction.merchant.icon ?? "",
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.fill,
                                  colorBlendMode: BlendMode.hardLight,
                                  color: context.appColors.fill.quaternary,
                                  loadStateChanged: (state) {
                                    switch (state.extendedImageLoadState) {
                                      case LoadState.completed:
                                        return AnimatedOpacity(
                                          opacity: 1.0,
                                          duration: Duration(milliseconds: 300),
                                          child: state.completedWidget,
                                        );
                                      default:
                                        return SizedBox();
                                    }
                                  },
                                ),
                              ),
                            ),
                            Column(
                              spacing: 4,
                              children: [
                                Text(
                                  transaction.merchant.name ?? "",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ).labelLg(),
                                Text(transaction.merchant.type ?? "").bodyMd(
                                  color:
                                      context.appColors.textIconColor.secondary,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 24),

                        Text(
                          "-${context.localization.currency(transaction.amount.amountFormatted())}",
                        ).h2(),
                        SizedBox(height: 40),
                        ListView.separated(
                          separatorBuilder: (context, index) {
                            return Divider(
                              height: 0,
                              thickness: 1,
                              color: context.appColors.stroke.nonOpaque,
                            );
                          },
                          itemBuilder: (context, index) {
                            final value = transaction.items[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: Column(
                                spacing: 2,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    value.key,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ).bodySm(
                                    color:
                                        context
                                            .appColors
                                            .textIconColor
                                            .secondary,
                                  ),
                                  Text(
                                    value.value,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ).bodyLg(),
                                ],
                              ),
                            );
                          },
                          itemCount: transaction.items.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                        ),
                        SizedBox(height: 16),
                        if
                        (transaction.taxQr.orEmpty().isNotEmpty)GestureDetector(
                          onTap: (){
                            
                            LauncherUtils.urlLauncher(transaction.taxQr!);

                          },
                          behavior: HitTestBehavior.translucent,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                spacing: 20,
                                children: [
                                  Assets.svgFiscalIcon.toSvgImage(
                                    tintColor: context.appColors.brand,
                                  ),
                                  Expanded(
                                    child: Text(context.localization.fiscalReceipt).bodyLg(),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Center(
                                      child: Assets.svgIconArrowRight.toSvgImage(
                                        height: 20,
                                        width: 20,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).shadow(
                          context,
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            error: (m) {
              return SizedBox();
            },
          );
        },
      ),
    );
  }
}

class LoadingContent extends StatelessWidget {
  const LoadingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Shimmer.fromDefault(
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ShimmerDefaultContainer(height: 80, width: 80, radius: 16),
              SizedBox(height: 16),
              ShimmerDefaultContainer(height: 20, width: 80, radius: 8),
              SizedBox(height: 2),
              ShimmerDefaultContainer(height: 20, width: 80, radius: 8),
              SizedBox(height: 16),
              ShimmerDefaultContainer(height: 24, width: 150, radius: 8),
              SizedBox(height: 16),
              ShimmerDefaultContainer(
                height: 100,
                width: double.maxFinite,
                radius: 16,
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
