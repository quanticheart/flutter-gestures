import 'package:animations/extentions/dialog_ext.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets/buttom_project.dart';

class OnDoubleTap extends StatefulWidget {
  const OnDoubleTap({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OnDoubleTap> {
  var rnd = Random();
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("On Double Tap"),
      ),
      body: Center(
          child: Container(
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(randomNumber.toString()),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    randomNumber = 0;
                    context.dialogAlert("Double Click Event");
                  });
                },
                child: ProjButton(
                  title: 'GET RANDOM NUMBER',
                  onPressed: () {
                    setState(() {
                      randomNumber = rnd.nextInt(100);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
