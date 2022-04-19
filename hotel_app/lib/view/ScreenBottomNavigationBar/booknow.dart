import 'package:flutter/material.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';

class BookNow extends StatefulWidget {
  @override
  _BookNowState createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Head().head("Book Now", context),
        body: _body(),
      ),
    );
  }
  _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30, top: 30, bottom: 30),
              child: Text(
                "Booking Details",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          _textInput("Name", Icon(Icons.person)),
          _textInput("Contact Number", Icon(Icons.phone)),
          _textInput("Check In", Icon(Icons.date_range)),
          _textInput("Check Out", Icon(Icons.date_range)),
          _textInput("People", Icon(Icons.people)),
          _textInput("Rooms", Icon(Icons.king_bed_rounded)),
          _bottom(),
        ],
      ),
    );
  }

  _textInput(String title, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      child: Material(
        elevation: 10.0,
        shadowColor: Colors.grey,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: icon,
            border: OutlineInputBorder(),
            hintText: title,
          ),
        ),
      ),
    );
  }

  _bottom() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 45.0, right: 30, top: 30, bottom: 30),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.8,
        child: RaisedButton(
          color: Colors.red,
          onPressed: () {},
          child: Text(
            "Book Now",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }


}
