import 'package:flutter/material.dart';
import 'package:hotel_app/controller/lineBoxController.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/hotel.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';

class Save extends StatefulWidget {
  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<Save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Head().head("Save", context),
        body: ListView.builder(
          itemCount: DBHelperBox().boxSave.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                LineBoxController()
                    .select("Hotel", context, DBHelperBox().boxSave, index);

                print(
                    "OnTap - > Card+${DBHelperBox().boxSave[index].primaryTitle}");
              },
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [_image(index), _rowSave()],
                ),
              ),
            );
          },
        ));
  }

  _image(int index) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          image: DecorationImage(
              image: ExactAssetImage(DBHelperBox().boxSave[index].picture),
              fit: BoxFit.fill)),
      child: Transform.translate(
        offset: Offset(20, 100), //50+10=dy  dx=50+10=60
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DBHelperBox().boxSave[index].primaryTitle, style: _style(30)),
            SizedBox(height: 10),
            Text(
              DBHelperBox().boxSave[index].secondTitle,
              style: _style(30),
            )
          ],
        ),
      ),
    );
  }

  _style(double size) {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: size, color: Colors.white);
  }

  _rowSave() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.turned_in_outlined,
            color: Colors.red,
          ),
          Text(
            "Save",
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.53),
          GestureDetector(
            onTap: () {
              print("OnTap -> Container");
            },
            child: Container(
              child: Text(
                "Book Now",
                style: TextStyle(color: Colors.red),
              ),
              height: 30,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
            ),
          ),
        ],
      ),
    );
  }
}
