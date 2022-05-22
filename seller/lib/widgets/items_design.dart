import 'package:flutter/material.dart';
import 'package:seller/mainScreens/item_detail_screen.dart';
import 'package:seller/model/items.dart';

import 'box_decorator_widget.dart';
import 'divider_widget.dart';

class ItemsDesignWidget extends StatefulWidget {
  Items? model;
  BuildContext? context;

  ItemsDesignWidget({Key? key, this.model, this.context}) : super(key: key);

  @override
  _ItemsDesignWidgetState createState() => _ItemsDesignWidgetState();
}

class _ItemsDesignWidgetState extends State<ItemsDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => ItemDetailsScreen(model: widget.model)));
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: const BoxDecorator().buildBoxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 290,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const DividerWidget(height: 4.0, thickness: 3.0),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  widget.model!.title!,
                  style: Theme.of(context).textTheme.labelMedium,
                  /* style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontFamily: "Train",
                  ),*/
                ),
                const SizedBox(
                  height: 2,
                ),
                Image.network(
                  widget.model!.thumbnailUrl!,
                  height: 220.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  widget.model!.shortInfo!,
                  style: Theme.of(context).textTheme.labelMedium,
                  /* style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),*/
                ),
                const SizedBox(
                  height: 1,
                ),
                const DividerWidget(height: 4.0, thickness: 3.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
