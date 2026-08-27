import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';

import 'widgets/review_item.dart';

class AddReviewPage extends HookWidget {
  final String contentTitle;
  final String contentDescription;
  final int? rating;

  const AddReviewPage({
    super.key,
    required this.contentTitle,
    required this.contentDescription,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final comment = useValueListenable(controller).text;
    final rate = useState(rating ?? 0);

    return BlocConsumer<ReviewBloc, ReviewState>(
      listenWhen: (prev, cur) =>
          prev.sendingComplete != cur.sendingComplete ||
          (cur.errorMessage != null && prev.errorMessage != cur.errorMessage),
      listener: (context, state) {
        if (state.errorMessage != null) {
          Toast.showToast(state.errorMessage!);
          return;
        }
        if (state.sendingComplete) {
          InfoAlertDialog.show(
            context,
            message: context.localization.feedbackImportant,
            onDismiss: () => context.pop(),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context.appColors.background.underlayer,
          extendBodyBehindAppBar: true,
          appBar: GradientAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: GradientAppBar.navbarHeight,
            gradientColor: context.appColors.background.underlayer,
            actions: [
              RoundedButton.closeButton(onPressed: () => context.pop()),
            ],
          ),
          body: IgnorePointer(
            ignoring: state.reviewSending,
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.only(
                top:
                    MediaQuery.paddingOf(context).top +
                    GradientAppBar.navbarHeight +
                    16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Text(context.localization.leaveFeedback).h2(),
                  ),
                  _card(context, controller, comment, rate),
                ],
              ),
            ),
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: AppActionButton(
                actionText: context.localization.sendFeedback,
                sizeType: ActionButtonSizeType.large,
                isLoading: state.reviewSending,
                disable: rate.value == 0 || comment.trim().isEmpty,
                onPressed: () {
                  context.read<ReviewBloc>().add(
                    ReviewEvent.sendReview(
                      comment: comment.trim(),
                      rate: rate.value,
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _card(
    BuildContext context,
    TextEditingController controller,
    String comment,
    ValueNotifier<int> rate,
  ) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 24,
        children: [
          Column(
            spacing: 16,
            children: [
              Text(contentTitle.trim(), textAlign: TextAlign.center).h1(),
              if (contentDescription.trim().isNotEmpty)
                Text(
                  contentDescription.trim(),
                  textAlign: TextAlign.center,
                ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: ReviewStars(
              stars: rate.value,
              filled: true,
              size: 32,
              spacing: 8,
              selectedColor: context.appColors.colors.yellow,
              onItemTab: (value) => rate.value = value,
            ),
          ),
          _commentField(context, controller, comment),
        ],
      ),
    );
  }

  Widget _commentField(
    BuildContext context,
    TextEditingController controller,
    String comment,
  ) {
    return Container(
      constraints: const BoxConstraints(minHeight: 144),
      decoration: BoxDecoration(
        color: context.appColors.fill.quaternary,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 8,
        children: [
          TextField(
            controller: controller,
            minLines: 5,
            maxLines: null,
            maxLength: 500,
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            cursorColor: context.appColors.textIconColor.secondary,
            style: CustomTypography.bodyMd.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
            buildCounter: (
              BuildContext context, {
              required int currentLength,
              required bool isFocused,
              required int? maxLength,
            }) => null,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              hintText: context.localization.writeReviewInFewSentences,
              hintStyle: CustomTypography.bodyMd.copyWith(
                color: context.appColors.textIconColor.secondary,
              ),
            ),
          ),
          Text(
            "${comment.characters.length}/500",
          ).bodyXXsm(color: context.appColors.textIconColor.tertiary),
        ],
      ),
    );
  }
}
