import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';


class Usage extends StatelessWidget {
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
                "How To Install",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 40, top: 50),
              child: Text(
                '''Hey there,\nSince our app is from independent developers and only Govt. approved apps are allowed to publish on Play Store, so we have created apk file which can be installed with the following steps.\n\nDirections:-\n
    1.)First, you must find download our apk from the link as per your device.
   2.) Before you can install it on your phone you will need to make sure that third-party apps are allowed on your device.
   3.) Go to Menu > Settings > Security > and check Unknown Sources to allow your phone to install apps from sources other than the Google Play Store.
   4.) Newer versions of Android do things a little differently. Rather than check a global setting to allow installation from unknown sources, you'll be prompted to allow your browser or file manager to install APKs the first time you attempt to do so.
''',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),

      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start ,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/step1.jpeg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/step2.jpeg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/step3.jpeg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/step4.jpeg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/step5.jpeg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/step6.jpeg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/usage2.jpg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/usage3.jpg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  "assets/images/usage4.jpg",
                  width: width/4,
                  fit: BoxFit.fitWidth,
                ),
              ),

            ],
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Swipe Image',
              style: TextStyle(color: Colors.yellowAccent, fontSize: 30, letterSpacing: 1),),
            SizedBox(
              width: 10,
            ),
            Icon(FontAwesome5.long_arrow_alt_right,size: 40,color: Colors.red,)
            ],
          ),
        ),

      )

    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: PageChildren(constraints.biggest.width),
          );
        } else {
          return Column(
            children: PageChildren(constraints.biggest.width*2),
          );
        }
      },
    );
  }
}

