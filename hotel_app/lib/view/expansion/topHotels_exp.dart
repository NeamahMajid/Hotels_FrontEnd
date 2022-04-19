import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:hotel_app/view/utilitiesView/lineCard.dart';

class TopHotels extends StatefulWidget {
  @override
  _TopHotelsState createState() => _TopHotelsState();
}

class _TopHotelsState extends State<TopHotels> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: Head().headBack("All Top Hotels", context),
          body: LineCard().lineCard(context,DBHelperBox().topHotels.length,DBHelperBox().topHotels)
      )
    );
  }
}
