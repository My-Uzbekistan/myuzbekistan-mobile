
import 'package:flutter/material.dart';

class Homeexperiment extends StatefulWidget {
  @override
  State<Homeexperiment> createState() => _MyPageState();
}

class _MyPageState extends State<Homeexperiment> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  double get progress => (_scrollOffset / 100).clamp(0.0, 1.0); // fade progress
  double get imageHeight => (60 * (1 - progress)).clamp(0.0, 60.0); // dynamic height
// scroll range: 0-100

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // ListView: Positioned with top offset depending on image height
            Positioned.fill(
              top: imageHeight + 48, // 48 = row spacing
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.only(top: 8),
                itemCount: 30,
                itemBuilder: (_, index) => ListTile(
                  title: Text('List item $index'),
                ),
              ),
            ),

            // Row of items: Positioned at top
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(3, (index) {
                    return Column(
                      children: [
                        AnimatedSize(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeOut,
                          child: imageHeight > 0
                              ? Opacity(
                            opacity: (1 - progress),
                            child: SizedBox(
                              height: imageHeight,
                              width: 60,
                              child: Image.network(
                                'https://picsum.photos/60/60',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                              : const SizedBox.shrink(),
                        ),
                        const SizedBox(height: 8),
                        Text('Item $index'),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
