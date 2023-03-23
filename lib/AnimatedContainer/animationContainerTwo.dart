import 'package:flutter/material.dart';

class ACTwo extends StatefulWidget {
  const ACTwo({Key? key}) : super(key: key);

  @override
  State<ACTwo> createState() => _ACTwoState();
}

class _ACTwoState extends State<ACTwo> {
  Alignment alignment = Alignment.bottomLeft;
  @override
  void initState() {
    super.initState();
    first();
  }

  void first() async {
    await Future.delayed(Duration(seconds: 5)).then((value) {
      setState(() {
        alignment = Alignment.topLeft;
      });
    });
    two();
  }

  void two() async {
    await Future.delayed(Duration(seconds: 5)).then((value) {
      setState(() {
        alignment = Alignment.topRight;
      });
    });
  }

  void three() async {
    await Future.delayed(Duration(seconds: 5)).then((value) {
      setState(() {
        alignment = Alignment.topLeft;
      });
    });
  }

  void four() async {
    await Future.delayed(Duration(seconds: 5)).then((value) {
      setState(() {
        alignment = Alignment.topLeft;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        alignment: alignment,
        duration: Duration(seconds: 4),
        curve: Curves.fastOutSlowIn,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1,
        color: Colors.red.shade50,
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
