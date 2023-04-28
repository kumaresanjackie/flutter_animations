import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSwitcher Example'),
      ),
      /*   AnimatedSwitcher: This widget animates the transition between different child widgets.
   In this case, it has a duration of 500 milliseconds and contains a single child Text widget that displays the value of _count.

    Text: This displays the current value of _count, which is interpolated into the string using string interpolation with the $ symbol.
     The ValueKey is used to uniquely identify the widget so that the AnimatedSwitcher can track it during animation.
    */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: TextStyle(
                  fontSize: 48.0,
                ),
              ),
            ),
          ],
        ),
      ),
      /*    onPressed callback that increments the value of _count by 1 */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
