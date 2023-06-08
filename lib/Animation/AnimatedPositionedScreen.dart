import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned Example'),
      ),
/*
        This defines the body of the app as a Center widget containing a Stack widget with one child, an AnimatedPositioned widget.
        This widget moves the Container it contains, with a duration of 5 seconds and using the bounceOut curve.
        The top and left properties of the AnimatedPositioned widget are set conditionally, based on the _isExpanded boolean variable.
        When _isExpanded is true, the Container moves to position (100, 50) and when false, it moves to (200, 150).
*/
      body: Center(
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(seconds: 5),
              curve: _isExpanded ? Curves.easeIn : Curves.bounceIn,
              top: _isExpanded ? 100 : 200,
              left: _isExpanded ? 50 : 150,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
/*
        When pressed, toggles the _isExpanded variable between true and false.
         This causes the AnimatedPositioned widget to animate the Container to its new position.
*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
            print(_isExpanded);
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
