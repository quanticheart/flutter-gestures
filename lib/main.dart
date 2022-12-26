import 'package:animations/extentions/navigation_ext.dart';
import 'package:animations/ui/drag_gesture.dart';
import 'package:animations/ui/long_press.dart';
import 'package:animations/ui/on_double_tap.dart';
import 'package:animations/ui/on_tap.dart';
import 'package:animations/ui/rotate_gesture.dart';
import 'package:animations/ui/scale_gesture.dart';
import 'package:animations/widgets/buttom_project.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

SystemUiOverlayStyle systemUIOverlayStyle() {
  return const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.purple,
  );
}

void uIOverlayStyle() {
  return SystemChrome.setSystemUIOverlayStyle(systemUIOverlayStyle());
}

void main() {
  uIOverlayStyle();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gesture Demos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ProjButton(
                  title: 'Drag',
                  onPressed: () {
                    context.navigateTo(const DragGesture());
                  }),
              ProjButton(
                  title: 'On Long Tap',
                  onPressed: () {
                    context.navigateTo(const OnLongPress());
                  }),
              ProjButton(
                  title: 'On Double Tap',
                  onPressed: () {
                    context.navigateTo(const OnDoubleTap());
                  }),
              ProjButton(
                  title: 'On Tap',
                  onPressed: () {
                    context.navigateTo(const OnTap());
                  }),
              ProjButton(
                  title: 'Rotate',
                  onPressed: () {
                    context.navigateTo(const RotateGesture());
                  }),
              ProjButton(
                  title: 'Scale',
                  onPressed: () {
                    context.navigateTo(const ScaleGesture());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
