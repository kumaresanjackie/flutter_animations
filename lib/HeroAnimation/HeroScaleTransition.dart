import 'package:flutter/material.dart';

class ExampleOneScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ExampleOneScreenTwo()),
          );
        },
        child: Hero(
          tag: 'textHero',
          flightShuttleBuilder: (BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext) {
            final Widget fromHero = fromHeroContext.widget;
            final Widget toHero = toHeroContext.widget;
            return ScaleTransition(
              scale: animation.drive(
                Tween<double>(begin: 0, end: 1).chain(
                  CurveTween(curve: Curves.easeInOut),
                ),
              ),
              child: flightDirection == HeroFlightDirection.push
                  ? toHero
                  : fromHero,
            );
          },
          child: FlutterLogo(size: 60,),
        ),
      ),
    );
  }
}

class ExampleOneScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'textHero',

            flightShuttleBuilder: (BuildContext flightContext,
                Animation<double> animation,
                HeroFlightDirection flightDirection,
                BuildContext fromHeroContext,
                BuildContext toHeroContext) {
              final Widget fromHero = fromHeroContext.widget;
              final Widget toHero = toHeroContext.widget;
              return ScaleTransition(

                scale: animation.drive(
                  Tween<double>(begin: 0, end: 1,).chain(
                    CurveTween(curve: Curves.easeInOut),
                  ),
                ),
                child: flightDirection == HeroFlightDirection.push
                    ? toHero
                    : fromHero,
              );
            },
            child: FlutterLogo(size: 60,),
          ),
        ),
      ),
    );
  }
}
