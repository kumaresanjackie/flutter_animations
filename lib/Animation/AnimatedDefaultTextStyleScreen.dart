import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  const AnimatedDefaultTextStyleScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleScreen> createState() =>
      _AnimatedDefaultTextStyleScreenState();
}

class _AnimatedDefaultTextStyleScreenState
    extends State<AnimatedDefaultTextStyleScreen> {
  bool _isBold = false;
  bool _isItalic = false;
  double _fontSize = 24.0;
  Color _color = Colors.black;

  void _toggleBold() {
    setState(() {
      _isBold = !_isBold;
    });
  }

  void _toggleItalic() {
    setState(() {
      _isItalic = !_isItalic;
    });
  }

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
      _fontSize = _fontSize + 2.0;
    });
  }

  void _changeColor() {
    setState(() {
      _color = _color == Colors.black ? Colors.red : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 500),
              style: TextStyle(
                fontWeight: _isBold ? FontWeight.bold : FontWeight.normal,
                fontStyle: _isItalic ? FontStyle.italic : FontStyle.normal,
                fontSize: _fontSize,
                color: _color,
              ),
              child: Text(
                'Hello, World!',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _toggleBold,
            child: Icon(Icons.format_bold),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: _toggleItalic,
            child: Icon(Icons.format_italic),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: _increaseFontSize,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: _changeColor,
            child: Icon(Icons.color_lens),
          ),
        ],
      ),
    );
  }
}
