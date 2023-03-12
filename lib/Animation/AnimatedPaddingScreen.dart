import 'package:flutter/material.dart';


class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  double _paddingValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: AnimatedPadding(
                padding: EdgeInsets.all(_paddingValue),
                duration: Duration(seconds: 1),
                curve: Curves.bounceInOut,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _paddingValue = _paddingValue == 0.0 ? 50.0 : 0.0;
                });
              },
              child: Text('Toggle Padding'),
            ),
          ],
        ),
      ),
    );
  }
}
