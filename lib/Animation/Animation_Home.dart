

import 'package:animations/customwidget.dart';
import 'package:animations/main.dart';
import 'package:flutter/material.dart';

import 'AnimatedModalBarrierScreen.dart';
import 'AnimatedPhysicalModelScreen.dart';
import 'AnimationControllerScreen.dart';
import 'AnimatedCrossFadeScreen.dart';
import 'AnimatedDefaultTextStyleScreen.dart';
import 'AnimatedListStateScreen.dart';
import 'AnimatedOpacityScreen.dart';
import 'AnimatedPaddingScreen.dart';
import 'AnimatedPositionedDirectionalScreen.dart';
import 'AnimatedPositionedScreen.dart';
import 'AnimatedSizeScreen.dart';
import 'AnimatedSwitcherScreen.dart';
import 'AnimatedThemeScreen.dart';

class AnimationContainerHome extends StatefulWidget {
  const AnimationContainerHome({Key? key}) : super(key: key);

  @override
  State<AnimationContainerHome> createState() => _AnimationContainerHomeState();
}

class _AnimationContainerHomeState extends State<AnimationContainerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation "),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWidget(
                  name: "AnimatedPositioned",
                  routewidget: AnimatedPositionedScreen()),
              CustomWidget(
                  name: "AnimatedCrossFade",
                  routewidget: AnimatedCrossFadeScreen()),
              CustomWidget(
                  name: "AnimatedOpacity",
                  routewidget: AnimatedOpacityScreen()),
              CustomWidget(
                  name: "AnimatedSwitcher",
                  routewidget: AnimatedSwitcherScreen()),
              CustomWidget(
                  name: "AnimatedDefaultTextStyle",
                  routewidget: AnimatedDefaultTextStyleScreen()),
              CustomWidget(
                  name: "AnimatedListState",
                  routewidget: AnimatedListStateScreen()),
              CustomWidget(
                  name: "AnimatedTheme", routewidget: AnimatedThemeScreen()),
              CustomWidget(
                  name: "AnimatedSize", routewidget: AnimatedSizeScreen()),
              CustomWidget(
                  name: "AnimatedPaddingScreen",
                  routewidget: AnimatedPaddingScreen()),
              CustomWidget(
                  name: "AnimatedPositionedDirectional",
                  routewidget: AnimatedPositionedDirectionalScreen()),
              CustomWidget(
                  name: "AnimatedPhysicalModel",
                  routewidget: AnimatedPhysicalModelScreen()),
              CustomWidget(
                  name: "AnimationController",
                  routewidget: AnimationControllerScreen()),
              CustomWidget(
                  name: "AnimatedModalBarrier",
                  routewidget: AnimatedModalBarrierWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
