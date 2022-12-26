import 'package:animations/extentions/navigation_ext.dart';
import 'package:animations/widgets/appbar_project.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets/buttom_project.dart';

class OnTap extends StatefulWidget {
  const OnTap({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OnTap> {
  var rnd = Random();
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjAppbar(
        title: "On Tap",
        onPressedBackAction: () {
          context.finish();
        },
      ),
      body: Center(
          child: Container(
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(randomNumber.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ProjButton(
                title: 'GET RANDOM NUMBER',
                onPressed: () {
                  setState(() {
                    randomNumber = rnd.nextInt(100);
                  });
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
