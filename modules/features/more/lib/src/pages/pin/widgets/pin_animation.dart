import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MPinAnimationController {
  late void Function(String) animate;
  late void Function(String) set;
  late void Function() setError;
  late void Function() clear;
}

class MPinAnimation extends StatefulWidget {
  final MPinAnimationController controller;
  final Animation<double> parentSizeAnimation;

  const MPinAnimation({
    super.key,
    required this.controller,
    required this.parentSizeAnimation,
  });

  @override
  _MPinAnimationState createState() => _MPinAnimationState();
}

class _MPinAnimationState extends State<MPinAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  String pin = '';

  Color? pinColor;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  void animate(String input) {
    _controller.forward();
    setState(() {
      pin = input;
    });
  }

  void set(String input) {
    if (pin.isEmpty) {
      setState(() {
        pin = input;
      });
    }
  }

  void setError() {
    setState(() {
      pinColor = context.appColors.colors.red;
    });
  }

  void clear() {
    setState(() {
      pin = '';
      pinColor = null;
    });
  }

  @override
  void initState() {
    widget.controller.animate = animate;
    widget.controller.set = set;
    widget.controller.setError = setError;
    widget.controller.clear = clear;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) {
        _controller.reverse();
      }
      setState(() {});
    });
    _sizeAnimation = Tween<double>(begin: 1, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = pinColor ?? context.appColors.brand;
    return AnimatedBuilder(
      animation: widget.parentSizeAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: widget.parentSizeAnimation.value,
          child: Transform.scale(
            scale: _sizeAnimation.value,
            child: Container(
              height: 16,
              width: 16,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: pin == '' ? context.appColors.fill.tertiary : color,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
