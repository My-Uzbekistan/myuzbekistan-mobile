import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:finance/src/di/injection.dart';
import 'package:finance/src/presentation/add_cards/add_cards_page.dart';
import 'package:finance/src/presentation/cards/bloc/cards_bloc.dart';
import 'package:finance/src/presentation/cards/cards_page.dart';
import 'package:finance/src/presentation/home/FinanceHomePage.dart';
import 'package:finance/src/presentation/home/bloc/finance_bloc.dart';
import 'package:finance/src/presentation/payment/bloc/payment_bloc.dart';
import 'package:finance/src/presentation/payment/payment_page.dart';
import 'package:finance/src/presentation/payment_history/bloc/history_bloc.dart';
import 'package:finance/src/presentation/payment_history/payment_history_page.dart';
import 'package:finance/src/presentation/qr_page/qr_page.dart';
import 'package:finance/src/presentation/transaction_detail/bloc/payment_check_bloc.dart';
import 'package:finance/src/presentation/transaction_detail/payment_transaction_detail.dart';
import 'package:finance/src/presentation/verification/bloc/verification_bloc.dart';
import 'package:finance/src/presentation/verification/otp_verification_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../presentation/add_cards/bloc/add_card_bloc.dart';
import '../presentation/payment_success/payment_success_page.dart';
import '../presentation/verification/bloc/types.dart';

mixin FeatureFinanceRouter {
  static final routes = [
    GoRoute(
      path: AppNavPath.finance.financeCards.path,
      name: AppNavPath.finance.financeCards.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create:
                  (context) =>
                      getIt<CardsBloc>()..add(
                        CardsEvent.setSelectedCardId(
                          state.uri.queryParameters["cardId"]?.toIntOrNull(),
                        ),
                      ),
              child: CardsPage(
                type: CardsPageType.values.firstWhere(
                  (e) => e.name == state.pathParameters["type"],
                  orElse: () => CardsPageType.list,
                ),
              ),
            ),
            context: context,
            state: state,
          ),
    ),

    GoRoute(
      path: AppNavPath.finance.financeAddCard.path,
      name: AppNavPath.finance.financeAddCard.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create: (context) => getIt<AddCardBloc>(),
              child: AddCardsPage(),
            ),
            context: context,
            state: state,
          ),
    ),

    GoRoute(
      path: AppNavPath.finance.financePayment.path,
      name: AppNavPath.finance.financePayment.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create: (context) => getIt<PaymentBloc>(),
              child: PaymentPage(id: state.pathParameters['id'].toString()),
            ),
            context: context,
            state: state,
          ),
    ),
    GoRoute(
      path: AppNavPath.finance.verification.path,
      name: AppNavPath.finance.verification.name,
      pageBuilder:
          (context, state) => ModalSheetPage(
            child: BlocProvider(
              create:
                  (context) => getIt<VerificationBloc>(
                    instanceName: VerificationType.addCardVerification,
                  ),
              child: OtpVerificationPage(
                cardId: state.pathParameters["cardId"].toString(),
              ),
            ),
          ),
    ),
    GoRoute(
      path: AppNavPath.finance.paymentTransactionDetailPage.path,
      name: AppNavPath.finance.paymentTransactionDetailPage.name,
      pageBuilder:
          (context, state) => ModalSheetPage(
            child: BlocProvider(
              create:
                  (context) =>
                      getIt<PaymentCheckBloc>()..add(
                        PaymentCheckEvent.load(paymentId: state.pathParameters["paymentId"]!),
                      ),
              child: PaymentTransactionDetail(),
            ),
          ),
    ),

    GoRoute(
      path: AppNavPath.finance.paymentSuccessPage.path,
      name: AppNavPath.finance.paymentSuccessPage.name,
      pageBuilder:
          (context, state) => ModalSheetPage(
            child: PaymentSuccessPage(
              params: state.extra as PaymentSuccessPageParams,
            ),
          ),
    ),

    GoRoute(
      path: AppNavPath.finance.qrReaderPage.path,
      name: AppNavPath.finance.qrReaderPage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: QrReaderPage(),
            context: context,
            state: state,
            slideAlign: SlideAlign.vertical,
          ),
    ),

    GoRoute(
      path: AppNavPath.finance.paymentHistoryPage.path,
      name: AppNavPath.finance.paymentHistoryPage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create:
                  (context) =>
                      getIt<HistoryBloc>()..add(HistoryEvent.loadNext()),
              child: PaymentHistoryPage(),
            ),
            context: context,
            state: state,
          ),
    ),
  ];
  static final shellFinance = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.finance.financeHome.path,
        name: AppNavPath.finance.financeHome.name,
        // redirect: (context, state){
        //
        //   return AppNavPath.more.authPage.path;
        // },
        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<FinanceBloc>(),
              child: const FinanceHomePage(),
            ),
      ),
    ],
  );
}
