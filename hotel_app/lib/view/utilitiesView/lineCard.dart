import 'package:flutter/material.dart';
import 'package:hotel_app/controller/lineBoxController.dart';
import 'package:hotel_app/models/boxModel.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';

class LineCard{

  lineCard(BuildContext context ,int lengthBox,List<BoxModel> boxDB){
    return
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount:lengthBox,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage(
                                    boxDB[index].picture),
                                fit: BoxFit.cover)),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            boxDB[index].primaryTitle,
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("\$350",
                              style: TextStyle( fontSize: 18))
                        ],
                      ),
                      trailing: Icon(Icons.turned_in),
                      onTap: (){

                        LineBoxController().select("Hotel", context, DBHelperBox().londonHotels, index);
                      },
                    ),
                  ),
                ),
              );
            }),
      );

  }

}