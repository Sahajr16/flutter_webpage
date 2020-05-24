import 'package:flutter/material.dart';

class FutureTab extends StatelessWidget {
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
                "Future",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 40, top: 50),
              child: Text(
                "In future, we plan to incorporate various NGO's in our, app due to the recent rise of Domestic violence cases in India during lockdown.\nSince, we saw a rise in the number of cases of domestic violence abuse during lock down in the news.\nProblems:\n1.)Victims are unable to call due the presence of the abuser around.\n2.)Most of the helpines are unable to reach and help gets delayed.\n\nSolutions\n1.) Collect infornation about the domestic abuse in a form.\n2.) Tie up with an NGO to provide them with the information.\n3.) Rapid help provided to the victim with reduced hurdles like calling or number not working issue.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      Padding(

        padding: const EdgeInsets.only(left: 40),
        child: Image.asset(
          "assets/images/abuse1.png",
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

