import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:hotel_app/models/utilitiesModels/DBHelperBox.dart';
import 'package:hotel_app/view/utilitiesView/Head.dart';
import 'package:hotel_app/view/utilitiesView/lineCard.dart';

class TopDeals extends StatefulWidget {
  @override
  _TopDealsState createState() => _TopDealsState();
}

class _TopDealsState extends State<TopDeals> {
  final List<String> _image = [
    'assets/topDeals_Pic/Karina.jpg',
    'assets/topDeals_Pic/Atlantis.jpg',
    'assets/topDeals_Pic/Grand.jpg',
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: Head().headBack("All Top Deals", context),
          body: Column(
            children: [
              _carouselSlider(),
              _dotsIndicator(),
              _lineCardExpanded(),
            ],
          )),
    );
  }

  _carouselSlider() {
    return CarouselSlider(
        items: _image
            .map(
              (item) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(item), fit: BoxFit.cover)),
              ),
            )
            .toList(),
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            onPageChanged: (index, context) {
              setState(() {
                _current = index;
              });
            }));
  }

  _dotsIndicator() {
    return DotsIndicator(
        dotsCount: _image.length,
        axis: Axis.horizontal,
        decorator: DotsDecorator(
          size: Size.square(9),
          activeColor: Colors.red,
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        position: _current.toDouble());
  }

  _lineCardExpanded() {
    return Expanded(
        child: LineCard().lineCard(
            context, DBHelperBox().topDeals.length, DBHelperBox().topDeals));
  }
}
