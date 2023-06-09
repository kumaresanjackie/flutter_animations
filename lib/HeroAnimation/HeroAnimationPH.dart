import 'package:flutter/material.dart';

class FirstScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Hero(
              tag: "HeroOne",
              placeholderBuilder: (
                  BuildContext context,
                  Size heroSize,
                  Widget child,
                  ) {
                return SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: CircularProgressIndicator(),
                );
              },
              child: Icon(
                Icons.image,
                size: 150.0,
              ),
            ),
            ElevatedButton(
              child: Text('Go to second screen'),
              onPressed: () {
                Navigator.push(context, CustomPageRoute(SecondScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "HeroOne",
                placeholderBuilder: (
                    BuildContext context,
                    Size heroSize,
                    Widget child,
                    ) {
                  return SizedBox(
                  child: Text("page transition"),
                  );
                },
                child: Icon(
                  Icons.image,
                  size: 150.0,
                ),
              ),
              ElevatedButton(
                child: Text('Back to first screen!'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )),
    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  final Widget child;

  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(seconds: 2);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
