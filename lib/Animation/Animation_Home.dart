import 'dart:math';

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
  CustomFunctions functions = CustomFunctions();
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
          /*    functions.buttonOne(
                  context, "Example", AnimatedPositionedScreen()),*/
              CustomWidget(
                routewidget: AnimatedPositionedScreen(),
                name: "AnimatedPositioned",
              ),
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

class CustomFunctions {
  InkWell buttonOne(BuildContext context, String name, Widget route) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => route));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: Colors.black)),
          color: Color(Random().nextInt(0xffffffff)).withOpacity(0.2),
        ),
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
