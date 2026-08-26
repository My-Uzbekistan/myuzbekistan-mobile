import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import 'bloc/onboarding_bloc.dart';

@immutable
class OnboardingPage extends HookWidget {
  final OnboardingBloc bloc;

  const OnboardingPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    useEffect(() {
        bloc.add(OnboardingEvent.trackView(index: currentIndex.value));
      return (){
        bloc.add(OnboardingEvent.clearDataEvent());
      };
    }, [bloc]);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      bloc: bloc,
      builder: (context, state) {
        final items = state.items!;
        return Scaffold(
          bottomNavigationBar:
              items[currentIndex.value].actionLink != null
                  ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
                      bottom: MediaQuery.of(context).padding.bottom + 8,
                    ),
                    child: AppActionButton(
                      actionText: context.localization.action_detail,
                      onPressed: () {
                        bloc.add(OnboardingEvent.trackClick(index: currentIndex.value));
                        pushAction(
                          context,
                          action: items[currentIndex.value].actionLink,
                        );
                      },
                    ),
                  )
                  : SizedBox(),
          appBar: GradientAppBar(
            automaticallyImplyLeading: false,
            widget:
                items.length > 1
                    ? Container(
                      height: 8,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: context.appColors.fill.tertiary,
                      ),
                      alignment: Alignment.centerLeft,
                      child: AnimatedFractionallySizedBox(
                        duration: Duration(milliseconds: 100),
                        widthFactor: (currentIndex.value+1) / items.length,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: context.appColors.brand,
                          ),
                        ),
                      ),
                    )
                    : SizedBox(),
            actions: [
              RoundedButton.closeButton(
                onPressed: () {
                  context.pop();
                },
              ),
            ],
          ),
          extendBodyBehindAppBar: true,
          body: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            clipBehavior: Clip.hardEdge,
            child: PageView.builder(
              onPageChanged: (index) {
                currentIndex.value = index ;
                bloc.add(OnboardingEvent.trackView(index: currentIndex.value));
              },
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildItem(context, items[index]);
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildItem(BuildContext context, OnboardingItem item) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          spacing: 16,
          children: [
            AspectRatio(
              aspectRatio: 375 / 280,
              child: AppNetworkImage(
                item.bannerUrl,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.none,
                placeholder: Assets.png.defaultContentImage.image(
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(item.title).h2(),
                  Text(item.description.orEmpty()).bodyLg(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pushAction(BuildContext context, {String? action}) {
    if (action == null) return;
    var uri = Uri.parse(action.trim());
    if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty ||
        uri.host.isEmpty) {
      context.push(uri.toString());
    } else {
      LauncherUtils.urlLauncher(action);
    }
  }


}
