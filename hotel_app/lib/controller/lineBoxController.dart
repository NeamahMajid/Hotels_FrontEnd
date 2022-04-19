import 'package:flutter/material.dart';
import 'package:hotel_app/models/boxModel.dart';
import 'package:hotel_app/view/expansion/capitalCity_exp.dart';
import 'package:hotel_app/view/expansion/gridCapitalCity.dart';
import 'package:hotel_app/view/expansion/topDeals_exp.dart';
import 'package:hotel_app/view/expansion/topHotels_exp.dart';
import 'package:hotel_app/view/hotel.dart';

class LineBoxController {
  select(String trip, BuildContext context, List<BoxModel> boxDB, int index) {
    switch (trip) {
      case "HotelsCapitalCity":
        return Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CapitalCity(
                  primaryTitle: boxDB[index].primaryTitle,
                )));
        break;
      case "Hotel":
        return Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Hotel(primaryTitle: boxDB[index].primaryTitle,secondTitle: boxDB[index].secondTitle,picture: boxDB[index].picture,)));
        break;
      // case "Deals":
      //   return Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => Hotel()));
      //   break;
    }
  }

  selectLine(String pageView,BuildContext context) {
    switch (pageView) {
      case "routeCapitalCity":
        return Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridCapitalCity()));
        break;
      case "routeTopHotels":
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TopHotels()));
        break;
      case "routeTopDeals":
        Navigator.of(context).push( MaterialPageRoute(builder: (context) => TopDeals()));
        break;
    }
  }
}
