import 'package:flutter/material.dart';
import 'package:hotel_app/controller/lineBoxController.dart';
import 'package:hotel_app/models/boxModel.dart';

class BoxUtility{


  Widget boxUtility( List<BoxModel> boxDB,int index,BuildContext context,String trip) {
    return GestureDetector(
      onTap: (){
        LineBoxController().select(trip,context,boxDB,index);
      }
      ,
      child: Container(
        height: 230,
        width: 230,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(7)),
            boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5), spreadRadius: 4, blurRadius: 1)
        ]),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(boxDB[index].picture), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    boxDB[index].primaryTitle,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 15),
                  Text(
                    boxDB[index].secondTitle,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}