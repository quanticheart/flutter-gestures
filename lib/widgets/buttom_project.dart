import 'package:flutter/material.dart';

class ProjButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ProjButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 42,
      elevation: 0,
      color: Colors.black,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Text(
        title,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
}
