import 'package:flutter/material.dart';
import 'package:hotel_app/view/Additions/PopUpOutMenu.dart';

class Head {
  head(String title, BuildContext context) {
    return AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.dehaze_rounded),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ));
  }

  headBack(String title, BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
    );
  }

  headRightIcon(String title, BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [PopUpOutMenuOption().popMenu()],
    );
  }

}
