import 'package:flutter/material.dart';

import 'box_decorator_widget.dart';

class SimpleAppBar extends StatelessWidget with PreferredSizeWidget {
  String? title;
  final PreferredSizeWidget? bottom;

  SimpleAppBar({this.bottom, this.title});

  @override
  Size get preferredSize => bottom == null
      ? Size(56, AppBar().preferredSize.height)
      : Size(56, 80 + AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      flexibleSpace: const BoxDecorator(),
      centerTitle: true,
      title: Text(
        title!,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
