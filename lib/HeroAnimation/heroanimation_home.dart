import 'package:flutter/material.dart';

import '../AnimatedIconScreen.dart';
import '../AnimationButtonInkWell.dart';
import '../customwidget.dart';
import 'HeroAnimation.dart';
import 'HeroAnimationFSB.dart';
import 'HeroAnimationPH.dart';
import 'HeroScaleTransition.dart';
import 'SimpleHeroAnimations.dart';

class HeroAnimationHome extends StatefulWidget {
  const HeroAnimationHome({Key? key}) : super(key: key);

  @override
  State<HeroAnimationHome> createState() => _HeroAnimationHomeState();
}

class _HeroAnimationHomeState extends State<HeroAnimationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animations"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWidget(
                  name: "Simple Hero Animation",
                  routewidget: ExampleFirstScreenOne()),
              CustomWidget(
                  name: "Simple Hero Animation List",
                  routewidget: HeroHomePage()),
              CustomWidget(
                  name: "ScaleTransition", routewidget: ExampleOneScreenOne()),
              CustomWidget(
                  name: "Hero FlightShuttle Builder",
                  routewidget: FirstScreenOne()),
              CustomWidget(
                  name: "Hero PlaceHolder", routewidget: FirstScreenTwo())
            ],
          ),
        ),
      ),
    );
  }
}
