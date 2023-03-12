import 'package:flutter/material.dart';


class AnimatedThemeScreen extends StatefulWidget {
  const AnimatedThemeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedThemeScreen> createState() => _AnimatedThemeScreenState();
}

class _AnimatedThemeScreenState extends State<AnimatedThemeScreen> {
   bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedTheme Example',
      theme: _isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedTheme Example'),
        ),
        body: Center(
          child: AnimatedTheme(
            data: _isDarkModeEnabled ? ThemeData.light() : ThemeData.dark(),
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 200,
              height: 200,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  'Animated Theme Example',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isDarkModeEnabled = !_isDarkModeEnabled;
            });
          },
          child: Icon(Icons.color_lens),
        ),
      ),
    );
  }
}