import 'package:flutter/material.dart';

enum MenuOption{Setting,Shearing,Delete,LogOut}
class PopUpOutMenuOption{
  popMenu() {
    return  PopupMenuButton<MenuOption>(
      icon: Icon(Icons.filter_alt_sharp),
      itemBuilder: (context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(child: Text("Setting"),value: MenuOption.Setting,),
          PopupMenuItem(child: Text("Shearing"),value: MenuOption.Shearing,),
          PopupMenuItem(child: Text("Delete"),value: MenuOption.Delete,),
          PopupMenuItem(child: Text("Log Out"),value: MenuOption.LogOut,),
        ];
      },
      onSelected: (MenuOption option){
        switch(option.index){

          case 0:
            print( "Function Setting");
            break;
          case 1:
            print( "Function  Shearing");
            break;
          case 2:
            print( "Function  Delete");
            break;
          case 3:
            print( "Function  LogOut");
            break;
        }
      },
    );  }
}