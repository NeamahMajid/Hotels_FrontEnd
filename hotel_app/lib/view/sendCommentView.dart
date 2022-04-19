import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel_app/view/Additions/DifferentShep.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';

class SendCommentView extends StatefulWidget {
  @override
  _SendCommentView createState() => _SendCommentView();
}

class _SendCommentView extends State<SendCommentView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: Head().headBack("Write A Review", context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            DifferentShep().priceStart(55,5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Tap a star to rate",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  shadowColor: Colors.grey,
                  elevation: 8.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Review", contentPadding: EdgeInsets.all(20.0)),
                    minLines: 12,
                    keyboardType: TextInputType.multiline,
                    maxLines: 12,
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
