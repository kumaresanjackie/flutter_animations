import 'package:flutter/material.dart';

class AnimatedButtonInkWell extends StatefulWidget {
  @override
  _AnimatedButtonInkWelltState createState() => _AnimatedButtonInkWelltState();
}



class _AnimatedButtonInkWelltState extends State<AnimatedButtonInkWell> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
           borderRadius: BorderRadius.circular(30.0),
          onTap: () {},
          onTapDown: (_) {
            setState(() {
              _isPressed = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isPressed = false;
            });
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                colors: _isPressed
                    ? [Colors.redAccent, Colors.pinkAccent]
                    : [Colors.pinkAccent.shade100, Colors.redAccent.shade100],
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
            child: Text(
              'Press Me',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
