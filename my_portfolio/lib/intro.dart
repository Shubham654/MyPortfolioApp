import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/contact.dart';

// ignore: unused_import
import 'package:my_portfolio/contact_me.dart';
import 'package:url_launcher/url_launcher.dart';

class Intro extends StatefulWidget {
  Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(
                      "Hello!",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          height: 1.3,
                          fontSize: 32),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Image.network(
                        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/apple/271/waving-hand_1f44b.png",
                        height: 60,
                        width: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(" I'm Shubham,",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
                  textAlign: TextAlign.justify),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Text(
                "I create awesome Products.",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30, top: 10),
              child: Text(
                "An intermediate Developer with a passion for building great products 😈.",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 45,
                ),
                OutlinedButton(
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/in/shubham654/';

                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text("LinkedIn"),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  onPressed: () async {
                    const url = 'https://twitter.com/Shubham654_';

                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text("Twitter"),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  onPressed: () async {
                    const url = 'https://github.com/Shubham654';

                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text("GitHub"),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Image(
                image: NetworkImage(
                    "https://cdn.dribbble.com/users/1162077/screenshots/4649464/skatter-programmer.gif")),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Contact()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Portfolio()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'SEE MY RESUME',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
