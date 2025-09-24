import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class AboutInfoPage extends StatefulWidget {
  final MoreItem moreItem;

  const AboutInfoPage({super.key, required this.moreItem});

  @override
  State<AboutInfoPage> createState() => _AboutInfoPageState();
}

class _AboutInfoPageState extends State<AboutInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 345 / 300,
                child: ExtendedImage.network(
                  widget.moreItem.photo ?? "",
                  cache: true,
                  fit: BoxFit.cover,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return AnimatedOpacity(
                          opacity: 1.0,
                          duration: Duration(milliseconds: 200),
                          child: state.completedWidget,
                        );

                      default:
                        return Assets.pngDefaultContentImage.toImage(
                          fit: BoxFit.cover,
                        );
                    }
                  },
                ),
              ),
            ),

            Text(widget.moreItem.description ?? "").h2(),
            Text(widget.moreItem.title ?? "").labelLg(),
          ],
        ),
      ),
    );
  }
}
