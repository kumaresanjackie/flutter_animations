import 'package:flutter/material.dart';
class AnimatedSizeScreen extends StatefulWidget {
  const AnimatedSizeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeScreen> createState() => _AnimatedSizeScreenState();
}

class _AnimatedSizeScreenState extends State<AnimatedSizeScreen>  {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Animated Size"),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showDetails = !_showDetails;
                });
              },
              child: Text('Toggle Details'),
            ),
            AnimatedSize(
              duration: Duration(seconds: 1),
              curve: Curves.linear,
              child: _showDetails
                  ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Details 1',),
                          Text('Details 2'),
                          Text('Details 3'),
                        ],
                      ),
                  )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
