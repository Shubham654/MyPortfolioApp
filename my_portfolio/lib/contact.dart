import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("Want to contact Me?",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                height: 1.3,
                fontSize: 25)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
            child: Text(
              "I ❤️ to share ideas and read Feedbacks. Feel free to reach me.             I check my inbox frequently. 😎",
              style: TextStyle(
                  fontWeight: FontWeight.w600, height: 1.3, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 345,
            height: 300,
            child: Image.network(
                "https://cdn.dribbble.com/users/1162077/screenshots/3848914/programmer.gif"),
          ),
          Text(
            "Shubham Chambhare",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.3, fontSize: 30),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 5),
          Text(
            "shubhamchambhare654@gmail.com",
            style: TextStyle(
                fontWeight: FontWeight.w600, height: 1.3, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://www.linkedin.com/in/shubham654/';

                  if (await canLaunch(url)) {
                    await launch(url, forceSafariVC: false);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("LinkedIn", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://twitter.com/Shubham654_';

                  if (await canLaunch(url)) {
                    await launch(url, forceSafariVC: false);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Twitter", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://github.com/Shubham654';

                  if (await canLaunch(url)) {
                    await launch(url, forceSafariVC: false);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      FaIcon(
                        FontAwesomeIcons.github,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("GitHub", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}