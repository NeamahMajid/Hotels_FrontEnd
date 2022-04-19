import 'package:flutter/material.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:hotel_app/view/utilitiesView/linebox.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: Head().head("Search", context),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  _textSearch(),
                  LineBox().lineTitle("Top Deals  ", context, "routeTopDeals"),
                  LineBox().lineBoxes(DBHelperBox().topDeals,
                      DBHelperBox().topDeals.length, context, "Hotel"),
                  LineBox().lineTitle("Top Hotels ", context, "routeTopHotels"),
                  LineBox().lineBoxes(DBHelperBox().topHotels,
                      DBHelperBox().topHotels.length, context, "Hotel"),





                  /*Container(
    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(0),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(20),
    topRight: Radius.circular(20),
    ),
    ),
    child: Text(
    "hfduasudfufa"),
    ),*/

                ],
              ),
            )));
  }

  _textSearch() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(150))),
          hintText: "Search Hotels",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.3),
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

// Container to Search

/* Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Text("     Search Hotels",
                            style: TextStyle(fontSize: 23)),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                        Icon(Icons.search)
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border.all(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),*/
