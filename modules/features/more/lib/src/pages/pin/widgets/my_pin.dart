import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/src/pages/pin/widgets/pin_animation.dart';

class MPinController {
  late void Function(String) addInput;
  late void Function() delete;
  late void Function() notifyWrongInput;
  late void Function() loading;
  late void Function() clear;
}

class MPinWidget extends StatefulWidget {
  final int pinSize;
  final MPinController controller;
  final ValueChanged<String> onCompleted;
  final ValueChanged<String>? onChange;

  const MPinWidget({
    super.key,
    @required required this.pinSize,
    required this.controller,
    this.onChange,
    required this.onCompleted,
  }) : assert(pinSize <= 6 && pinSize > 0);

  @override
  _MPinWidgetState createState() => _MPinWidgetState();
}

class _MPinWidgetState extends State<MPinWidget> with TickerProviderStateMixin {
  late List<MPinAnimationController> _animationControllers;
  late AnimationController _scaleController;
  late AnimationController _wrongInputAnimationController;
  late Animation<double> _wiggleAnimation;
  late Animation<double> _sizeAnimation;
  String mPin = '';

  void addInput(String input) async {
    if (mPin.length < widget.pinSize) {
      mPin += input;
      _animationControllers[mPin.length - 1].animate(input);
      widget.onChange?.call(mPin);
    }
    if (mPin.length == widget.pinSize) {
      await Future.delayed(Duration(milliseconds: 200));
      widget.onCompleted.call(mPin);
    }
  }

  void delete() {
    if (mPin.isNotEmpty) {
      _animationControllers[mPin.length - 1].clear();
      mPin = mPin.substring(0, mPin.length - 1);
      widget.onChange?.call(mPin);
    }
  }

  void loading() {
    for (var controller in _animationControllers) {
      controller.set("0");
    }
    _scaleController.repeat(reverse: true);
  }

  void notifyWrongInput() {
    _scaleController.reset();
    HapticFeedback.selectionClick();
    for (var controller in _animationControllers) {
      controller.setError();
    }
    _wrongInputAnimationController.forward();
    mPin = '';
    widget.onChange?.call(mPin);
  }

  void clear() {
    mPin = '';
    widget.onChange?.call(mPin);
    for (var controller in _animationControllers) {
      controller.clear();
    }
  }

  @override
  void initState() {
    super.initState();
    widget.controller.delete = delete;
    widget.controller.addInput = addInput;
    widget.controller.notifyWrongInput = notifyWrongInput;
    widget.controller.loading = loading;
    widget.controller.clear = clear;
    _animationControllers = List.generate(widget.pinSize, (index) {
      return MPinAnimationController();
    });
    _wrongInputAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            try {
              setState(() {});
            } catch (e) {}
          })
          ..addStatusListener((status) {

            if (status == AnimationStatus.completed) {
              _wrongInputAnimationController.reverse();
            }
            if (status == AnimationStatus.dismissed) {
              for (var controller in _animationControllers) {
                controller.clear();
              }
            }
          });

    _wiggleAnimation = Tween<double>(begin: 0.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _wrongInputAnimationController,
        curve: Curves.elasticIn,
      ),
    );
    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _sizeAnimation = Tween<double>(begin: 1, end: 1.2).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeInOutCubic),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(_wiggleAnimation.value, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: List.generate(widget.pinSize, (index) {
          return MPinAnimation(
            controller: _animationControllers[index],
            parentSizeAnimation: _sizeAnimation,
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _wrongInputAnimationController.dispose();
    _scaleController.dispose();
    super.dispose();
  }
}
