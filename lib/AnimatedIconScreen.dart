import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _togglePlayPause,
          child: AnimatedIcon(
            icon: AnimatedIcons.view_list,
            progress: _animation,
            size: 50.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
