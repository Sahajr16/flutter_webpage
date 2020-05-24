import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class SocialInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopSocialInfo();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopSocialInfo();
        } else {
          return MobileSocialInfo();
        }
      },
    );
  }
}

class DesktopSocialInfo extends StatelessWidget {


  List<Widget> socialMediaWidgets() {
    return [
      IconButton(
        icon: Icon(FontAwesome5.facebook),
        onPressed: (){
          launch('https://www.facebook.com/Corona-Tech-102512858143716');
        },
      ),
      IconButton(
        icon: Icon(FontAwesome5.twitter),
        onPressed: (){
          launch('https://twitter.com/corona_tech');
        },
      ),
      IconButton(
        icon: Icon(FontAwesome5.instagram),
        onPressed: (){
          launch('https://www.instagram.com/corona19tech/');
        },
      ),
      MaterialButton(
        color: CupertinoColors.darkBackgroundGray,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        onPressed: () {
          launch('https://docs.google.com/forms/d/e/1FAIpQLSdHE8kW6TqbtpN0791Y6o3sEde_mYIw_bb6U14zxlD2dd_DTQ/viewform?usp=sf_link');
        },
        child: Text(
          "Feedback",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ];
  }

  Widget copyRightText() => Text(
    "Corona Tech ©️2020",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.grey,
    ),
  );





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: socialMediaWidgets(),
              ),
              copyRightText(),

            ],
          ),
            Text('--------------------------------------------------------------------------------------------')
          ],

        ),
      ),
    );
  }
}



class MobileSocialInfo extends StatelessWidget {

  List<Widget> socialMediaWidgets() {
    return [
      IconButton(
        icon: Icon(FontAwesome5.facebook),
        onPressed: (){
          launch('https://www.facebook.com/Corona-Tech-102512858143716');
        },
      ),
      IconButton(
        icon: Icon(FontAwesome5.twitter),
        onPressed: (){
          launch('https://twitter.com/corona_tech');
        },
      ),
      IconButton(
        icon: Icon(FontAwesome5.instagram),
        onPressed: (){
          launch('https://www.instagram.com/corona19tech/');
        },
      ),
      MaterialButton(
        color: CupertinoColors.darkBackgroundGray,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        onPressed: () {
          launch('https://docs.google.com/forms/d/e/1FAIpQLSdHE8kW6TqbtpN0791Y6o3sEde_mYIw_bb6U14zxlD2dd_DTQ/viewform?usp=sf_link');
        },
        child: Text(
          "Feedback",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ];
  }

  Widget copyRightText() => Text(
    "Corona Tech ©️2020",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.grey,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: socialMediaWidgets(),
            ),
            copyRightText(),
            Text('-------------------------------------------------------------')
          ],
        ),
      ),
    );
  }
}

