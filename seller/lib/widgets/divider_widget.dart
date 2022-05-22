import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
    required this.height,
    required this.thickness,
  }) : super(key: key);

  final double height;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: Theme.of(context).colorScheme.primaryContainer,
      thickness: thickness,
    );
  }
}
