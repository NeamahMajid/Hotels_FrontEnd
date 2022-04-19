import 'package:flutter/material.dart';

class MyDrawer{

  myDrawer(){
    return  Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 125,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: ExactAssetImage(
                                "assets/capitalCity_pic/Istanbul.jpg"),fit: BoxFit.cover)),
                  ),
                  Text("Name",style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
            Divider(thickness: 1,),
            ListTile(title: Text("MY Account"),trailing: Icon(Icons.chevron_right),),
            Divider(thickness: 1,),
            ListTile(title: Text("Payments & Refunds"),trailing: Icon(Icons.chevron_right),),
            Divider(thickness: 1,),
            ListTile(title: Text("Past Bookings"),trailing: Icon(Icons.chevron_right),),
            Divider(thickness: 1,),
            ListTile(title: Text("Help & Support"),trailing: Icon(Icons.chevron_right),),
            Divider(thickness: 1,),
            ListTile(title: Text("Privacy Policy"),trailing: Icon(Icons.chevron_right),),
            Divider(thickness: 1,),
            ListTile(title: Text("Logout"),trailing: Icon(Icons.chevron_right),)

          ],
        ));

  }
}