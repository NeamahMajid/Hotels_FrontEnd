import 'package:flutter/material.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:hotel_app/view/utilitiesView/lineCard.dart';

// ignore: must_be_immutable
class CapitalCity extends StatefulWidget {
  String primaryTitle;

  CapitalCity({Key key, this.primaryTitle}) : super(key: key);

  @override
  _CapitalCityState createState() => _CapitalCityState();
}

class _CapitalCityState extends State<CapitalCity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Head().headRightIcon("All Capital City", context),
        body: Column(
          children: [
           _rowTitle(),
          _dividerDraw(),
            _lineCardExpanded(),

          ],
        ),
      ),
    );
  }

  _rowTitle() {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
              width: 10
          ),
          Icon(
            Icons.location_on_sharp,
            color: Colors.red,
            size: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.primaryTitle,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  _dividerDraw() {return   Divider(
    thickness: 2,
    indent: 10,
    endIndent: 10,
    color: Colors.grey,
  );}

  _lineCardExpanded() {
    return Expanded(child: LineCard().lineCard(context, DBHelperBox().londonHotels.length, DBHelperBox().londonHotels));
  }
}
