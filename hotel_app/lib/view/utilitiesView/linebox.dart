import 'package:flutter/material.dart';
import 'package:hotel_app/controller/lineBoxController.dart';
import 'package:hotel_app/models/boxModel.dart';
import 'package:hotel_app/view/utilitiesView/boxUtilitis.dart';

class LineBox {
  lineTitle(String title, BuildContext context, String pageView) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.55),
          InkWell(
            onTap: () {
              LineBoxController().selectLine(pageView, context);
              print("$title");
            },
            child: Text(
              "View All",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  lineBoxes(
      List<BoxModel> boxDB, int length, BuildContext context, String trip) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.31,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: length,
          itemBuilder: (context, index) {
            return BoxUtility().boxUtility(boxDB, index, context, trip);
          }),
    );
  }
}
