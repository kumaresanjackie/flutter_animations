import 'package:flutter/material.dart';

import '../AnimationButtonInkWell.dart';

import '../customwidget.dart';
import 'AnimationBuilderOne.dart';
import 'AnimationBuilderTwo.dart';

class AnimationBuilderHome extends StatefulWidget {
  const AnimationBuilderHome({Key? key}) : super(key: key);

  @override
  State<AnimationBuilderHome> createState() => _AnimationBuilderHomeState();
}

class _AnimationBuilderHomeState extends State<AnimationBuilderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWidget(
                  name: "AnimationBuilderOne",
                  routewidget: AnimationBuilderOne()),
              CustomWidget(
                  name: "AnimationBuilderTwo",
                  routewidget: AnimationBuilderTwo()),
            ],
          ),
        ),
      ),
    );
  }
}
