import 'package:flutter/material.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:hotel_app/view/utilitiesView/boxUtilitis.dart';

class GridCapitalCity extends StatefulWidget {
  @override
  _GridCapitalCityState createState() => _GridCapitalCityState();
}

class _GridCapitalCityState extends State<GridCapitalCity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: Head().headBack("GridCapitalCity", context),
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.8,
                  maxCrossAxisExtent: 250,
                  mainAxisSpacing: 0.5,
                  crossAxisSpacing: 0.5 //Row
                  ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return BoxUtility().boxUtility(DBHelperBox().capitalCity, index,
                    context, "HotelsCapitalCity");
              })),
    );
  }
}
