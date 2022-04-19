import 'package:flutter/material.dart';
import 'package:hotel_app/view/homeView.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage("assets/Hotel.png"))),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Book and enjoy your stay",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "     Select the hotel and date as per your\n preference to book and have a pleasant stay",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 175,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 15),
                  height: 50,
                  width: 350,
                  child: RaisedButton(
                    child: Text("Get Started"),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
