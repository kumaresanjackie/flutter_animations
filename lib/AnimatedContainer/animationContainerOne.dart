import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerOne extends StatefulWidget {
  const AnimatedContainerOne({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerOne> createState() => _AnimatedContainerOneState();
}

class _AnimatedContainerOneState extends State<AnimatedContainerOne> {
  double h = 100;
  double w = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          color: Color(Random().nextInt(0xffffffff)),
          duration: Duration(seconds: 1),
          height: h,
          width: w,
          curve: Curves.easeInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            h += 20;
            w += 20;
          });
        },
      ),
    );
  }
}
