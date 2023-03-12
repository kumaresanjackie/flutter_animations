import 'package:flutter/material.dart';


class AnimatedPositionedDirectionalScreen extends StatefulWidget {
  const AnimatedPositionedDirectionalScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedDirectionalScreen> createState() => _AnimatedPositionedDirectionalScreenState();
}

class _AnimatedPositionedDirectionalScreenState extends State<AnimatedPositionedDirectionalScreen> {
   bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositionedDirectional Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isMoved = !_isMoved;
            });
          },
          child: Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              AnimatedPositionedDirectional(
                top: _isMoved ? 50 : 0,
                start: _isMoved ? 50 : 0,
                duration: Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}