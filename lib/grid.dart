import 'package:flutter/material.dart';

class Gridss extends StatefulWidget {
  const Gridss({Key? key}) : super(key: key);

  @override
  State<Gridss> createState() => _GridssState();
}

class _GridssState extends State<Gridss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (ctx, index) {
            return Card(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/dl.png',
                            ))),
                  )
                ],
              ),
            );
          }),
    );
  }
}
