import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ReadMore extends StatelessWidget {
  final String title;
  final String content;

  const ReadMore({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
          bottom: MediaQuery.of(context).padding.bottom+16
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [Text(title).h2(), Text(content).bodyLg()],
        ),
      ),
    );
  }
}
