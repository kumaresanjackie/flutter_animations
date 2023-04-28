import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

/*

   The AnimatedOpacity widget has an opacity value that is determined by the _isVisible variable - if _isVisible is true, then the opacity is 1.0, otherwise it is 0.1.
   The duration of the opacity animation is 500 milliseconds.
   The child of the AnimatedOpacity widget is a Container widget with a blue background color and a size of 200x200.
   Inside the container, there is a Text widget that displays "Hello" in white with a font size of 24.

*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity Example'),
      ),

      body: Center(
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.1,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
      ),
      // When Press the Button It Changes the Boolean function true or false.
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleVisibility,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
