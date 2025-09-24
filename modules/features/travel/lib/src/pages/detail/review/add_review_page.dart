import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';

import 'widgets/review_item.dart';

class AddReviewPage extends StatefulWidget {
  final String contentTitle;
  final String contentType;
  final int? rating;

  const AddReviewPage({
    super.key,
    required this.contentTitle,
    required this.contentType,
    this.rating,
  });

  @override
  State<AddReviewPage> createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  final TextEditingController _controller = TextEditingController();
  ReviewBloc? reviewBloc;
  bool _isActive = false;

  int rate = 0;

  @override
  void initState() {
    // TODO: implement initState
    reviewBloc = context.read();
    rate = widget.rating ?? 0;
    _controller.addListener(_onTextChanged);
    super.initState();
  }

  void _onTextChanged() {
    final active = _controller.text.length > 10;
    if (_isActive != active) {
      setState(() {
        _isActive = active;
      });
    }
  }

  void setRate(int r) {
    setState(() {
      if (rate == r) {
        rate = r > 1 ? r - 1 : 0;
      } else {
        rate = r;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewBloc, ReviewState>(
      bloc: reviewBloc,
      listener: (context, state) {
        if (state.sendingComplete) {
          InfoAlertDialog.show(
            context,
            message: context.localization.feedbackImportant,
            onDismiss: () {
              context.pop();
            },
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: GradientAppBar(
            automaticallyImplyLeading: false,
            actions: [
              RoundedButton.closeButton(
                onPressed: () {
                  context.pop();
                },
              ),
            ],
          ),

          body: IgnorePointer(
            ignoring: state.reviewSending,
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
                top: MediaQuery.of(context).padding.top + kToolbarHeight + 8,
                bottom: MediaQuery.of(context).padding.bottom + 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(context.localization.leaveFeedback).h2(),
                  SizedBox(height: 16),
                  Text(widget.contentTitle).bodyLg(),
                  Text(widget.contentType).bodySm(),
                  SizedBox(height: 32),
                  Center(
                    child: ReviewStars(
                      stars: rate,
                      filled: true,
                      size: 32,
                      spacing: 8,
                      selectedColor: context.appColors.colors.yellow,
                      onItemTab: (r) {
                        setRate(r);
                      },
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: context.appColors.fill.quaternary,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ).copyWith(top: 16, bottom: 8),
                    child: TextFormField(
                      minLines: 6,
                      controller: _controller,
                      maxLength: 500,
                      maxLines: 15,
                      textInputAction: TextInputAction.done,
                      style: CustomTypography.bodyMd.copyWith(
                        color: context.appColors.textIconColor.primary,
                      ),


                      buildCounter: (
                        BuildContext context, {
                        required int currentLength,
                        required bool isFocused,
                        required int? maxLength,
                      }) {
                        return Text("$currentLength/$maxLength").bodyXXsm(
                          color: context.appColors.textIconColor.tertiary,
                        );
                      },
                      cursorColor: context.appColors.textIconColor.secondary,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.zero,
                        hintText: context.localization.writeReviewInFewSentences,
                        hintStyle: CustomTypography.bodyMd.copyWith(
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AppActionButton(
                actionText:context.localization.sendFeedback,
                disable: !_isActive && rate >= 0,
                isLoading: state.reviewSending,
                sizeType: ActionButtonSizeType.large,

                onPressed: () {
                  reviewBloc?.add(
                    ReviewEvent.sendReview(
                      comment: _controller.text,
                      rate: rate,
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

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
