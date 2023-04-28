import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeScreen> createState() => _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade Example'),
      ),
      /*
      The AnimatedCrossFade widget defines the two child widgets that will be transitioned between using the firstChild and secondChild properties.
      The duration property specifies the length of time for the animation to complete.

      The firstChild widget is a Container widget that displays a blue box with a centered text of "First".

      The secondChild widget is a Container widget that displays a red box with a centered text of "Second".

      The crossFadeState property specifies which child widget to show using a boolean variable _isFirst.
      If _isFirst is true, AnimatedCrossFade shows firstChild, otherwise, it shows secondChild.

*/
      body: Center(


      child: AnimatedCrossFade(
          duration: Duration(seconds: 3),
          firstChild: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'First',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          secondChild: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text(
                'Second',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          crossFadeState:
              _isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
/*
        When clicked, it toggles the value of the _isFirst boolean variable,
        which causes AnimatedCrossFade to animate the transition between the two child widgets

*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isFirst = !_isFirst;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
