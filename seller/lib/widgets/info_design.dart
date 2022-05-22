import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:seller/global/global.dart';
import 'package:seller/mainScreens/itemsScreen.dart';
import 'package:seller/model/menus.dart';

import 'box_decorator_widget.dart';
import 'divider_widget.dart';

class InfoDesignWidget extends StatefulWidget {
  Menus? model;
  BuildContext? context;

  InfoDesignWidget({Key? key, this.model, this.context}) : super(key: key);

  @override
  _InfoDesignWidgetState createState() => _InfoDesignWidgetState();
}

class _InfoDesignWidgetState extends State<InfoDesignWidget> {
  deleteMenu(String menuID) {
    FirebaseFirestore.instance
        .collection("sellers")
        .doc(sharedPreferences!.getString("uid"))
        .collection("menus")
        .doc(menuID)
        .delete();

    Fluttertoast.showToast(msg: "Menu Deleted Successfully.");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => ItemsScreen(model: widget.model)));
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: const BoxDecorator().buildBoxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const DividerWidget(height: 4.0, thickness: 3.0),
                Image.network(
                  widget.model!.thumbnailUrl!,
                  height: 220.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.model!.menuTitle!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontSize: 20,
                        fontFamily: "Train",
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete_sweep,
                          color: Theme.of(context).colorScheme.error),
                      onPressed: () {
                        //delete menu
                        deleteMenu(widget.model!.menuID!);
                      },
                    ),
                  ],
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
