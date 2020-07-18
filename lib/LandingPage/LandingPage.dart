import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

void downloadFile(String url){
  html.AnchorElement anchorElement =  new html.AnchorElement(href: url);
  anchorElement.download = url;
  anchorElement.click();
}

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Corona Tech",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Coronaकवच is a mobile application developed by the Students of Delhi Technological University to help contain Covid-19 using technology.\n\nWe intend to provide information related to Covid-19, as we update our servers from a crowdsourced community(updated gradually) which helps us in updating our heat-maps. We use data mapping to plot upcoming hotsots in an area available to public,\nwe intend to track the community spread of any particular virus or disease.\nMainly  we provide a robust heatmap containing the Covid-19 hotspots(Designated by the governments of various states), so that while stepping out people can avoid such places.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),

            ),
            Text('Downloading our app from website might give the warning, "This type of file can harm your device."\nThere is absolutely no need to worry, since publishing any app related to Covid-19 is not allowed unless approved by government. We assure you this apk is completely safe to download. So, do download and be sure to give us any feedback either by shaking your phone while running the app or by pressing the feedback button in the website.\n\n',softWrap: true,style: TextStyle(
                fontSize: 15,color: Colors.yellow
            ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    downloadFile('https://github.com/CoronaTechIndia/CoronaTechIndia.github.io/releases/download/v1.0.2/CoronaKavachArm64_v1.0.2.apk');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: Text(
                      "Download APP - (Latest phone) (ARM X64)",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    "assets/images/qr1.png",
                    width: 100,
                  ),
                ),
                Text('This app works with latest Android Models(Arm x64)\n\n',softWrap: true,style: TextStyle(
                    fontSize: 15,color: Colors.yellow
                ),)
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    downloadFile('https://github.com/CoronaTechIndia/CoronaTechIndia.github.io/releases/download/v1.0.2/CoronaKavachFAT_v1.0.2.apk');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: Text(
                      "Download APP - (All Phones) (FAT APK)",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    "assets/images/qr2.png",
                    width: 100,
                  ),
                ),
                Text('This apk works with all Android Phones(for old phones)',softWrap: true,style: TextStyle(
                  fontSize: 15,color: Colors.yellow
                ),)
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/splash1.png",
          width: width,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

