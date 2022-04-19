import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel_app/view/commentsView.dart';

class DifferentShep {
  stackContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CommentsView()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.22,
        //color: Colors.red,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/topHotels_Pic/swiss.jpg"),
            ),
            _circleLocationStack(20, "assets/topHotels_Pic/Dedeman.jpg"),
            _circleLocationStack(40, "assets/topDeals_Pic/Karina.jpg"),
            _circleLocationStack(60, "assets/topDeals_Pic/Atlantis.jpg"),
            Positioned(
                left: 60,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.withOpacity(0.8),
                  child: Text("+25",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.8))),
                ))
          ],
        ),
      ),
    );
  }

  _circleLocationStack(double size, String pictures) {
    return Positioned(
      left: size,
      child: CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(pictures),
      ),
    );
  }

  price() {
    return Text("\$350");
  }

  priceStart(double sizeStart,int index) {
    return RatingBar.builder(
      itemCount: index,
        itemSize: sizeStart,
        itemBuilder: (context, _) {
          return Icon(
            Icons.star,
            color: Colors.amber,
          );
        },
        onRatingUpdate: (_rating) {
          print("Rating:-${_rating}");
        });
  }
}
