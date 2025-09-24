import 'package:flutter/material.dart';
class BounceTap extends StatefulWidget {
  /// this defines how hard you want the collapsed_container to bounce on tap


  /// this is your collapsed_container child
  final Widget child;

  /// This is a user defined duration
  final Duration? duration;

  /// this callback triggers when your collapsed_container is tapped
  final VoidCallback? onTap;

  /// this callback triggers when your collapsed_container is pressed for a long time
  final VoidCallback? onLongPress;


  const BounceTap({
    super.key,
    required this.child,
     this.onTap,

    this.duration,
    this.onLongPress,
  });

  @override
  State<BounceTap> createState() => _BounceTapState();
}

class _BounceTapState extends State<BounceTap>
    with SingleTickerProviderStateMixin {
  /// this handles the animation
  late AnimationController _animationController;

  DateTime? tapDownTime;
  DateTime? tapUpTime;

  Duration get duration => widget.duration ?? const Duration(milliseconds: 250);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      lowerBound: 0.0,
      upperBound: 0.06,
      duration: duration,
    )..addListener(() {
      setState(() {});

      ///listens to the animation and updates the app state

    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTapDown: onTapDown,
    onTapUp: onTapUp,
    onTapCancel: (){
      _animationController.reverse();
    },
    child: Transform.scale(
      scale: 1 - _animationController.value,
      child: widget.child,
    ),
  );

  onTapDown(_) {
    tapDownTime = DateTime.now();

    ///Firing the animation right away
    _animationController.forward();
  }

  onTapUp(_) {
    tapUpTime = DateTime.now();
    final difference = tapUpTime!.difference(tapDownTime!);
    if (difference.inMilliseconds <= 200) {
      widget.onTap?.call();
    } else {
      if (difference.inMilliseconds < 1200) {
        widget.onLongPress?.call();
      }
    }

    ///now reverse the animation
    _animationController.reverse();
  }
}

// extension on VoidCallback {
//   delayed(Duration duration) {
//     Future.delayed(duration).then((value) => this.call());
//   }
// }
