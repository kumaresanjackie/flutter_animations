import 'dart:math';

import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  CustomWidget({Key? key, required this.name, required this.routewidget})
      : super(key: key);
  String name;
  Widget routewidget;
  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => widget.routewidget));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: Colors.black)),
          color: Color(Random().nextInt(0xffffffff)).withOpacity(0.2),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.name,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
      ),
    );
  }
}
