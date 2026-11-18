import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';

import 'bloc/contract_detail_bloc.dart';
import 'widgets/collapsible_section.dart';
import 'widgets/contract_formatters.dart';
import 'widgets/contract_good_card.dart';
import 'widgets/contract_product_card.dart';
import 'widgets/contract_product_property_card.dart';
import 'widgets/labeled_value.dart';

class ContractDetailPage extends StatelessWidget {
  const ContractDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContractDetailBloc, ContractDetailState>(
      listenWhen: (prev, cur) =>
          cur.errorMessage != null && prev.errorMessage != cur.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null) {
          Toast.showToast(state.errorMessage!);
        }
      },
      builder: (context, state) {
        final contract = state.contract;
        return Scaffold(
          appBar: GradientAppBar(
            title: contract?.number == null
                ? context.localization.contractDetailsTitle
                : context.localization.contractTitle(contract!.number!),
          ),
          body: state.isLoading && contract == null
              ? const Center(child: CircularProgressIndicator.adaptive())
              : contract == null
                  ? Center(
                      child: Text(context.localization.nothing_found).bodyMd(),
                    )
                  : _ContractBody(contract: contract),
        );
      },
    );
  }
}

class _ContractBody extends StatelessWidget {
  final Contract contract;

  const _ContractBody({required this.contract});

  @override
  Widget build(BuildContext context) {
    final l = context.localization;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Shartnoma ma'lumotlari
          CollapsibleSection(
            title: l.contractInfoSection,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14,
              children: [
                LabeledValue(
                  label: l.contractDate,
                  value: dateText(contract.contractDate),
                ),
                LabeledValue(label: l.contractCurrency, value: contract.currency),
                LabeledValue(
                  label: l.contractDiscussionEndDate,
                  value: dateTimeText(contract.discussionEndDate),
                ),
                LabeledValue(
                  label: l.contractTotalAmount,
                  value: amountText(contract.totalAmount,
                      currency: contract.currency ?? "UZS"),
                ),
                LabeledValue(
                  label: l.contractEndDate,
                  value: dateTimeText(contract.endDate),
                ),
                LabeledValue(
                  label: l.contractOqsAmount,
                  value: amountText(contract.oqsAmount,
                      currency: contract.currency ?? "UZS"),
                ),
                LabeledValue(label: l.contractBasis, value: contract.basis),
                LabeledValue(
                  label: l.contractAdvanceAmount,
                  value: amountText(contract.advanceAmount,
                      currency: contract.currency ?? "UZS"),
                ),
                LabeledValue(label: l.contractRegion, value: contract.region),
              ],
            ),
          ),
          _divider(context),

          // 2. To'lov shartlari (kunlarda)
          CollapsibleSection(
            title: l.contractPaymentTerms,
            collapsible: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14,
              children: [
                LabeledValue(
                  label: l.contractAdvancePaymentDay,
                  value: contract.advancePaymentDay == null
                      ? null
                      : l.contractDaysValue(contract.advancePaymentDay!),
                ),
                LabeledValue(
                  label: l.contractPaymentPeriod,
                  value: contract.paymentPeriodDays == null
                      ? null
                      : l.contractDaysValue(contract.paymentPeriodDays!),
                ),
                LabeledValue(
                  label: l.contractDeliveryPeriod,
                  value: contract.deliveryPeriodDays == null
                      ? null
                      : l.contractDaysValue(contract.deliveryPeriodDays!),
                ),
              ],
            ),
          ),
          _divider(context),

          // 3. Mahsulotlar
          if (contract.products.isNotEmpty) ...[
            CollapsibleSection(
              title: l.contractProducts,
              collapsible: false,
              child: Column(
                spacing: 12,
                children: contract.products
                    .map((p) => ContractProductCard(product: p))
                    .toList(),
              ),
            ),
            _divider(context),
          ],

          // 4. Mahsulot xususiyatlari
          if (contract.productProperties.isNotEmpty) ...[
            CollapsibleSection(
              title: l.contractProductProperties,
              collapsible: false,
              child: Column(
                spacing: 12,
                children: contract.productProperties
                    .map((p) => ContractProductPropertyCard(property: p))
                    .toList(),
              ),
            ),
            _divider(context),
          ],

          // 5. Tovarlar
          if (contract.goods.isNotEmpty) ...[
            CollapsibleSection(
              title: l.contractGoods,
              child: Column(
                spacing: 12,
                children: [
                  for (var i = 0; i < contract.goods.length; i++)
                    ContractGoodCard(good: contract.goods[i], index: i + 1),
                ],
              ),
            ),
            _divider(context),
          ],

          // 6. To'lov haqida ma'lumot (ish kunlarida)
          CollapsibleSection(
            title: l.contractPaymentInfo,
            collapsible: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14,
              children: [
                LabeledValue(
                  label: l.contractDeliveryPeriod,
                  value: contract.paymentInfoDeliveryDays == null
                      ? null
                      : l.contractWorkDaysValue(
                          contract.paymentInfoDeliveryDays!),
                ),
                LabeledValue(
                  label: l.contractPrepaymentPeriod,
                  value: contract.paymentInfoPrepaymentDays == null
                      ? null
                      : l.contractWorkDaysValue(
                          contract.paymentInfoPrepaymentDays!),
                ),
                LabeledValue(
                  label: l.contractAdvancePercent,
                  value: contract.advancePercent == null
                      ? null
                      : "${contract.advancePercent}%",
                ),
                LabeledValue(
                  label: l.contractPaymentPeriod,
                  value: contract.paymentInfoPaymentDays == null
                      ? null
                      : l.contractWorkDaysValue(
                          contract.paymentInfoPaymentDays!),
                ),
              ],
            ),
          ),
          _divider(context),

          // 7. Buyurtmachining manzili
          CollapsibleSection(
            title: l.contractCustomerAddress,
            initiallyExpanded: false,
            child: LabeledValue(
              label: l.contractRegion,
              value: contract.customerAddress,
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Divider(
          height: 1,
          thickness: 1,
          color: context.appColors.stroke.nonOpaque,
        ),
      );
}
