import 'package:flutter/material.dart';

class BoxDecorator extends StatelessWidget {
  const BoxDecorator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: buildBoxDecoration(context),
    );
  }

  BoxDecoration buildBoxDecoration(BuildContext context,
      [Color? color1, Color? color2]) {
    return BoxDecoration(
        gradient: LinearGradient(
      colors: [
        if (color1 != null) color1 else Theme.of(context).primaryColor,
        if (color2 != null) color2 else Theme.of(context).secondaryHeaderColor
      ],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(1.0, 0.0),
      stops: const [0.0, 1.0],
      tileMode: TileMode.clamp,
    ));
  }
}
