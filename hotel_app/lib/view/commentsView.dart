import 'package:flutter/material.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';

import 'Additions/DifferentShep.dart';
import 'sendCommentView.dart';

class CommentsView extends StatefulWidget {
  @override
  _CommentsViewState createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Head().headBack("Ratings", context),
        body: Column(
          children: [_commentPath(), _showRating(), _listComment()],
        ),
      ),
    );
  }

  _commentPath() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: Text("Write a Review"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SendCommentView()));
            },
          ),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }

  _listComment() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.72,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return _commentShow(index);
          }),
    );
  }

  _commentShow(int index) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("assets/topHotels_Pic/Babylon.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text("Name User"), Text("Feb 2022")],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.55),
                DifferentShep().priceStart(10, 5)
              ],
            ),
            Text(
              "${index}-FAMILY FRIENDLY !!! Stayed for four nights, extremely friendly and cooperative staffs and lovely ambience, the best thing about this place is the quality of the food.",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  _showRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _numberRating(),
        _fiveStars(),
        _line(),
      ],
    );
  }

  _numberRating() {
    return Text(
      "4.5",
      style: TextStyle(fontSize: 90, color: Colors.red),
    );
  }

  _fiveStars() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DifferentShep().priceStart(15, 5),
          DifferentShep().priceStart(15, 4),
          DifferentShep().priceStart(15, 3),
          DifferentShep().priceStart(15, 2),
          DifferentShep().priceStart(15, 1),
          //   Row(children: [ _line()],)
        ],
      ),
    );
  }

  _line() {
    return Container(
      height: 60,
      child: Stack(
        children: [
          Container(
            height: 7,
            width: 100,
            color: Colors.grey,
          ),
          Positioned(
            child: Container(
              height: 7,
              width: 70,
              color: Colors.red,
            ),
          ),
          _linedata(12, Colors.grey, 100),
          _linedata(12, Colors.red, 70),
          _linedata(24, Colors.grey, 100),
          _linedata(24, Colors.red, 70),
          _linedata(36, Colors.grey, 100),
          _linedata(36, Colors.red, 70),
          _linedata(48, Colors.grey, 100),
          _linedata(48, Colors.red, 70),
        ],
      ),
    );
  }

  _linedata(double top, Color c, double size) {
    return Positioned(
      top: top,
      child: Container(
        height: 7,
        width: size,
        color: c,
      ),
    );
  }
}
