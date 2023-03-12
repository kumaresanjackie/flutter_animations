import 'package:flutter/material.dart';


class AnimationControllerScreen extends StatefulWidget {
  const AnimationControllerScreen({Key? key}) : super(key: key);

  @override
  State<AnimationControllerScreen> createState() => _AnimationControllerScreenState();
}

class _AnimationControllerScreenState extends State<AnimationControllerScreen>   with SingleTickerProviderStateMixin {
 late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationController Example'),
      ),
      body: Center(
        child: Opacity(
          opacity: _animation.value,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Hello, Flutter!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
