import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/Aboutus.dart';
import 'package:flutter_webpage/LandingPage/Future.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';
import 'package:flutter_webpage/Navbar/SocialInfo.dart';
import 'package:flutter_webpage/LandingPage/Aboutus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona कवच',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(255,99,71, 1.0),
                Color.fromRGBO(0, 0 ,128, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
              SocialInfo(),
              SizedBox(
                height: 100,
              ),
              AboutUs(),
              SizedBox(
                height: 100,
              ),
              SocialInfo(),
              SizedBox(
                height: 100,
              ),
              FutureTab(),
              SizedBox(
                height: 100,
              ),
              SocialInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
