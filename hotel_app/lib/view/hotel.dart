import 'package:flutter/material.dart';
import 'package:hotel_app/view/Additions/DifferentShep.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class Hotel extends StatefulWidget {
  String primaryTitle, secondTitle, picture;

  Hotel({Key key, this.primaryTitle, this.secondTitle, this.picture})
      : super(key: key);

  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  String content =
      "Citizenm Tower of London is located directly above Tower Hill Underground Station Offering spectacular views on the river Thames,Tower of London and Tower Bridge citizenm offers 370 luxury fitted rooms and a food and beverage savailable 24/7.Live your London life to the fullest – however short your visit may be – with citizenM Tower of London hotel as your springboard. With a tube stop right underneath us, Tower of London in front, and the City on the right, you will waste no time reaching... well... any place you want!";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: Head().headBack('Hotel', context),
          body: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _image(),
                _textDesc(),
                _rowInfo(),
                _differentShep(),
                _titleAmenities(),
                _rowIconsAmenities(),
                _rowBottom()
              ],
            ),
          )),
    );
  }

  _image() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(widget.picture.toString()),
              fit: BoxFit.cover)),
    );
  }

  _style(double size, FontWeight weight, Color color) {
    return TextStyle(fontSize: size, fontWeight: weight, color: color);
  }

  _textDesc() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            widget.primaryTitle,
            style: _style(25, FontWeight.w500, Colors.black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Trinity Square, London EC3N 4DJ",
            style: _style(20, FontWeight.normal, Colors.red),
          ),
          SizedBox(
            height: 8,
          ),
          ReadMoreText(
            content,
            trimLines: 4,
            colorClickableText: Colors.pink,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'Read less',
            moreStyle: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            lessStyle: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            style: TextStyle(fontSize: 20, height: 1),
          ),
        ],
      ),
    );
  }

  _rowInfo() {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Colors.red,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Text("${widget.primaryTitle.toString()}@example.com",
              style: _style(16, FontWeight.normal, Colors.black)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06
          ),
          Icon(
            Icons.phone,
            color: Colors.red
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01
          ),
          Text(
            "+91-1354627298",
            style: _style(16, FontWeight.normal, Colors.black)
          )
        ],
      ),
    );
  }

  _differentShep() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12  ),
      child: Row(
        children: [
          _shape("Price", DifferentShep().price()),
          //,()=>"f1"
          SizedBox(width: MediaQuery.of(context).size.width * 0.25),
          _shape("Ratings", DifferentShep().priceStart(15,5)),
          //,()=>"f2"
          SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          _shape("Reviews", DifferentShep().stackContainer(context)),
          //,()=>"f3"
        ],
      ),
    );
  }

  _shape(String title, Object function) {
    return Column(
      children: [
        Text(
          title,
          style: _style(16, FontWeight.normal, Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        function
      ],
    );
  }

  _titleAmenities() {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Text(
          "Amenities",
          style: _style(18, FontWeight.normal, Colors.black),
        ),
      ],
    );
  }

  _rowIconsAmenities() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconsAmenities(Icons.wifi, "Free Wi fi"),
          _iconsAmenities(Icons.free_breakfast, "Breakfast"),
          _iconsAmenities(Icons.pool, "Pool"),
          _iconsAmenities(Icons.pets_outlined, "Pets"),
          _iconsAmenities(Icons.wine_bar, "Bar"),
          _iconsAmenities(Icons.more_horiz, "More"),
        ],
      ),
    );
  }

  _iconsAmenities(IconData icon, String title) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.grey,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              icon,
              color: Colors.red,
              size: 40,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: _style(16, FontWeight.normal, Colors.black),
        )
      ],
    );
  }

  _rowBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 70,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.8,
          child: RaisedButton(
              color: Colors.red,
              child: Text(
                "BookNow",
                style: _style(20, FontWeight.bold, Colors.white),
              ),
              onPressed: () {}),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.15,
          child: Icon(
            Icons.turned_in_not_rounded,
            size: 35,
            color: Colors.red,
          ),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.all(Radius.circular(7))),
        )
      ],
    );
  }
}
