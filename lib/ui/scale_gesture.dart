import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScaleGesture extends StatefulWidget {
  const ScaleGesture({super.key});

  final String title = "GestureDetector Demo";

  @override
  ScaleGestureState createState() => ScaleGestureState();
}

class ScaleGestureState extends State<ScaleGesture> {
  double newScale = 1;
  double oldScale = 1;

  @override
  initState() {
    super.initState();
    newScale = 1;
  }

  Widget scale() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onScaleUpdate: (ScaleUpdateDetails details) {
        setState(() {
          newScale = oldScale * details.scale;
          // oldScale = newScale;
          if (kDebugMode) {
            print(newScale);
          }
        });
      },
      onScaleStart: (ScaleStartDetails details) {
        setState(() {
          oldScale = newScale;
        });
      },
      child: Transform.scale(
        scale: newScale,
        origin: const Offset(0.0, 0.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.green,
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
