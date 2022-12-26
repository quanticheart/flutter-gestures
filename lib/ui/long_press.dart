import 'package:animations/extentions/dialog_ext.dart';
import 'package:animations/extentions/navigation_ext.dart';
import 'package:animations/widgets/buttom_project.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets/appbar_project.dart';

class OnLongPress extends StatefulWidget {
  const OnLongPress({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OnLongPressState();
}

class _OnLongPressState extends State<OnLongPress> {
  var rnd = Random();
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjAppbar(
        title: "On Long Press",
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
            Text(randomNumber.toString()),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onLongPress: () => context.dialogAlert("LongPress Event"),
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
