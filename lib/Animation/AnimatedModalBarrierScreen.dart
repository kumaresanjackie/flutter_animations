import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedModalBarrierWidgetState();
  }
}

class AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget>
    with SingleTickerProviderStateMixin {
  bool _isLoading = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorTweenAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Color.fromARGB(100, 255, 255, 255),
      end: Color.fromARGB(100, 127, 127, 127),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorTweenAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorTweenAnimation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
    _animationController.dispose();
  }
  List<Widget> buildWidgetList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      ElevatedButton(
        child: Text('Button'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });

          _animationController.reset();
          _animationController.forward();

          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Button is pressed')));

          Future.delayed(const Duration(seconds: 5), () {
            setState(() {
              _isLoading = false;
            });
          });
        },
      ),
    ];

    if (_isLoading) {
      widgets.add(_animatedModalBarrier);
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 250.0,
                  // alignment: FractionalOffset.center,
                  child: new Stack(
                    alignment: AlignmentDirectional.center,
                    children: buildWidgetList(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}