import 'package:animations/AnimationBuilder/animationbuilder_home.dart';
import 'package:animations/HeroAnimation/heroanimation_home.dart';
import 'package:flutter/material.dart';

import 'AnimatedIconScreen.dart';
import 'Animation/Animation_Home.dart';

import 'AnimationButtonInkWell.dart';
import 'customwidget.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.purpleAccent,
        shape: Border.all(color: Colors.black, width: 2),
        centerTitle: true,
      ),
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidget(
              name: "Animation",
              routewidget: AnimationContainerHome(),
            ),
            CustomWidget(
              name: "AnimationBuilder",
              routewidget: AnimationBuilderHome(),
            ),
            CustomWidget(
              name: "Hero Animation",
              routewidget: HeroAnimationHome(),
            ),
            CustomWidget(
              name: "AnimationIcon",
              routewidget: AnimatedIconScreen(),
            ),
            CustomWidget(
                name: "AnimatedButtonInkWell",
                routewidget: AnimatedButtonInkWell()),
          ],
        ),
      ),
    );
  }
}
