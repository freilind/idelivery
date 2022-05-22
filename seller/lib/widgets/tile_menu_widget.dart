import 'package:flutter/material.dart';

class TileMenuWidget extends StatelessWidget {
  const TileMenuWidget({
    Key? key,
    required this.controller,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData, color: Theme.of(context).colorScheme.onPrimary),
      title: SizedBox(
        width: 250,
        child: TextField(
          style: const TextStyle(color: Colors.black54),
          controller: controller,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(color: Colors.black26),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
