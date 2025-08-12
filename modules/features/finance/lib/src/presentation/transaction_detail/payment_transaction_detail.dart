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
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.payment_details).labelLg(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Assets.svgRoundedCloseIcon.toSvgImage(
              colorFilter: ColorFilter.mode(
                context.appColors.textIconColor.secondary,
                BlendMode.srcIn,
              ),
            ),
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

              debugPrint("merchandImage ${transaction.merchant.icon ?? ""}");
              return SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                    width: double.maxFinite,

                    padding: EdgeInsets.all(
                      16,
                    ).copyWith(bottom: kBottomNavigationBarHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 12,
                      children: [
                        Column(
                          spacing: 16,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                color: context.appColors.fill.quaternary,
                                child: ExtendedImage.network(
                                  transaction.merchant.icon ?? "",
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.fill,
                                  // colorBlendMode: BlendMode.hardLight,

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
                              spacing: 2,
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
                        Text(
                          "-${context.localization.currency(transaction.amount.amountFormatted())}",
                        ).h1(),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: context.appColors.background.elevation1Alt,
                          ),
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              final value = transaction.items[index];
                              return Padding(
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  spacing: 16,
                                  children: [
                                    Expanded(
                                      child:
                                          Text(
                                            value.key,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ).bodyLg(),
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: screenWidth * 0.6,
                                      ),
                                      child:
                                          Text(
                                            value.value,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ).bodyLg(),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: transaction.items.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                          ),
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
