import 'package:flutter/material.dart';

class ProjAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final VoidCallback? onPressedBackAction;

  const ProjAppbar(
      {Key? key, required this.title, this.onPressedBackAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        onPressed: onPressedBackAction,
      ),
      title: Text(title),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
