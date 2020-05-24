import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  List<Widget> PageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 40, top: 50),
              child: Text(
                "About Us",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 40, top: 50),
              child: Text(
                "Coronaकवच App is designed and conceptualized by Sahaj Rastogi and Yash Mudgal.\nWe are students of Delhi Technological University. We intend to use public help to help us identify community spread of Covid-19 in India & provide heat-maps for existing places.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      Padding(

        padding: const EdgeInsets.only(left: 40),
        child: Image.asset(
          "assets/images/ppp.png",
          width: width/2,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: PageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: PageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

