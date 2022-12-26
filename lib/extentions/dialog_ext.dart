import 'package:flutter/material.dart';

extension DialogExt on BuildContext {
  dialogAlert(String text) {
    showDialog(
        context: this,
        builder: (_) => AlertDialog(
              title: const Text("GestureDetector"),
              content: Text(text),
              actions: <Widget>[
                MaterialButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(this).pop();
                  },
                )
              ],
            ));
  }
}
