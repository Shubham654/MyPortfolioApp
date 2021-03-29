import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('About Myself',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                height: 1.3,
                fontSize: 25)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Text(
                    "Ever since I was a little kid software development has been my passion.I still remember sitting in front of a big CRT monitor desktop with the TurboC loaded in making it print Hello Shubham for the very first time. As I went through the basic tutorial of language, it was almost magic, being able to get the computer to do whatever I wanted,just by typing in these little code lines and compile, limited only by my own imagination and ingenuity. Throughout middle and high school I latched on to any ideas for projects I could get, moving from "
                    "'Hello World'"
                    " all the way to a simple switch calculator, with dozens of projects in between.I learned C++, then Python, tearing through any books I could find on anything remotely related to software development. I was insatiable.This passion carried me through my education at KITS Ramtek.Here there were more resources available to me than I ever could have imagined as a kid. I studied new languages, algorithms,compilers, higher mathematics, all with pretty much the same fascination that drove me as a kid. And it was here that I learned truly how much there was yet to learn.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        fontSize: 16),
                    textAlign: TextAlign.justify),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, bottom: 100),
              child: Image.asset(
                "assets/images/cat.gif",
                width: 320,
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text(" Made with ❤️ By Shubham."))
          ],
        ),
      ),
    );
  }
}
