import 'package:flutter/material.dart';
import 'dart:math';

class RotateGesture extends StatefulWidget {
  const RotateGesture({super.key});

  final String title = "GestureDetector Demo";

  @override
  RotateGestureState createState() => RotateGestureState();
}

class RotateGestureState extends State<RotateGesture> {
  double newAngle = 0;

  @override
  initState() {
    super.initState();
  }

  Widget scale() {
    return GestureDetector(
      onScaleUpdate: (ScaleUpdateDetails details) {
        setState(() {
          newAngle = details.rotation;
        });
      },
      child: Transform.rotate(
        angle: (newAngle * 180.0) / pi,
        origin: const Offset(50.0, 0.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Stack(
        children: [
          scale(),
        ],
      )),
    );
  }
}
