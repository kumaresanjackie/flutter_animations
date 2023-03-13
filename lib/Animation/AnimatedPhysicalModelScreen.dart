import 'package:flutter/material.dart';

class AnimatedPhysicalModelScreen extends StatefulWidget {
  const AnimatedPhysicalModelScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelScreen> createState() => _AnimatedPhysicalModelScreenState();
}

class _AnimatedPhysicalModelScreenState extends State<AnimatedPhysicalModelScreen> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _first ? 0 : 60.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              borderRadius: _first
                  ? const BorderRadius.all(Radius.circular(0))
                  : const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: const Text('Click Me!'),
              onPressed: () {
                setState(() {
                  _first = !_first;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}