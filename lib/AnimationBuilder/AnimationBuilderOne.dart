import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimationBuilderOne extends StatefulWidget {
  const AnimationBuilderOne({super.key});

  @override
  State<AnimationBuilderOne> createState() => _AnimationBuilderOneState();
}

/// AnimationControllers can be created with `vsync: this` because of
/// TickerProviderStateMixin.
class _AnimationBuilderOneState extends State<AnimationBuilderOne>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationBuilder"),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        child: const Center(
          child: Icon(Icons.ac_unit),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
