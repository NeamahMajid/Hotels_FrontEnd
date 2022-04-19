import 'package:flutter/material.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:hotel_app/view/utilitiesView/linebox.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
 /* MaterialPageRoute routeCapitalCity=MaterialPageRoute(builder: (context)=>CapitalCity());
MaterialPageRoute routeTopHotels=MaterialPageRoute(builder: (context)=>TopHotels());
MaterialPageRoute routeTopDeals=MaterialPageRoute(builder: (context)=>TopDeals());
*/  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
appBar: Head().head("Explore",context),
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            LineBox().lineTitle("Capital City",context,"routeCapitalCity"),
            LineBox().lineBoxes(DBHelperBox().capitalCity,DBHelperBox().capitalCity.length,context,"HotelsCapitalCity"),
            LineBox().lineTitle("Top Hotels ",context,"routeTopHotels"),
            LineBox().lineBoxes(DBHelperBox().topHotels,DBHelperBox().topHotels.length,context,"Hotel"),
            LineBox().lineTitle("Top Deals  ",context,"routeTopDeals"),
            LineBox().lineBoxes(DBHelperBox().topDeals,DBHelperBox().topDeals.length,context,"Hotel"),
          ],
        ),
      )),
    );
  }

}
