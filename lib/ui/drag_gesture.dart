import 'package:animations/extentions/navigation_ext.dart';
import 'package:animations/widgets/appbar_project.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DragGesture extends StatefulWidget {
  const DragGesture({super.key});

  final String title = "Drag Gesture";

  @override
  DragGestureState createState() => DragGestureState();
}

class DragGestureState extends State<DragGesture> {
  Offset dxy = const Offset(0, 0);

  @override
  initState() {
    super.initState();
  }

  Widget drag() {
    return GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        setState(() {
          dxy = dxy + details.delta;
        });
        if (kDebugMode) {
          print(dxy);
        }
      },
      child: Transform.translate(
        offset: dxy,
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjAppbar(
        title: widget.title,
        onPressedBackAction: () {
          context.finish();
        },
      ),
      body: Center(
          child: Stack(
        children: [
          drag(),
        ],
      )),
    );
  }
}
