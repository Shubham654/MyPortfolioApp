import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Portfolio extends StatefulWidget {
  Portfolio({Key key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();

  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('My Resume',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                height: 1.3,
                fontSize: 25)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                "assets/images/shubham.jpeg",
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Shubham Chambhare',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.teal[300],
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text("Application Developer",
                      style: TextStyle(fontSize: 22))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 15),
            ExpansionTileCard(
              borderRadius: BorderRadius.circular(20.0),
              key: cardA,
              leading: CircleAvatar(child: Icon(Icons.school)),
              title: Text('Education'),
              subtitle: Text('My overall qualification'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      "Third Year - Computer Technology",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                        " Kavikulguru Institute of Technology and Science, Ramtek",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center),
                  ]),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardB,
              leading: CircleAvatar(child: Icon(Icons.my_library_books)),
              title: Text('Certificates'),
              subtitle: Text('My Licenses and Certificates '),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 20, right: 20),
                  child: Row(children: [
                    Text(
                      "Android Development in Flutter",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      avatar: Icon(Icons.verified),
                      label: Text('Verify'),
                      onPressed: () async {
                        const url =
                            'https://drive.google.com/file/d/153UmDKsZWaQp4fajClIw4bfFqOQaIiyq/view';

                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ]),
                ),
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 10, right: 10),
                  child: Row(children: [
                    Text(
                      "Python Bootcamp From Zero to Hero",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      avatar: Icon(Icons.verified),
                      label: Text('Verify'),
                      onPressed: () async {
                        const url =
                            'https://www.udemy.com/certificate/UC-183c6314-70e1-4f3d-8a71-7389163cedf2/';

                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ]),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardC,
              leading: CircleAvatar(child: Icon(Icons.star_outline_outlined)),
              title: Text('Technical Skills'),
              subtitle: Text('Skills with ratings'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/flutterlogo.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Flutter & Dart",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    StepProgressIndicator(
                      totalSteps: 10,
                      currentStep: 7,
                      selectedColor: Colors.red,
                      unselectedColor: Colors.yellow,
                    )
                  ]),
                ),
                Divider(
                  thickness: 3.0,
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(children: [
                        FaIcon(
                          FontAwesomeIcons.python,
                          size: 32,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Python",
                          style: TextStyle(fontSize: 19),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      SizedBox(height: 8),
                      StepProgressIndicator(
                        totalSteps: 10,
                        currentStep: 8,
                        selectedColor: Colors.red,
                        unselectedColor: Colors.yellow,
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(children: [
                        FaIcon(
                          FontAwesomeIcons.html5,
                          size: 32,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "HTML",
                          style: TextStyle(fontSize: 19),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      SizedBox(height: 8),
                      StepProgressIndicator(
                        totalSteps: 10,
                        currentStep: 5,
                        selectedColor: Colors.red,
                        unselectedColor: Colors.yellow,
                      )
                    ],
                  ),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardD,
              leading: CircleAvatar(child: Icon(Icons.code_sharp)),
              title: Text('Languages'),
              subtitle: Text('Programming languages'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      "Flutter & Dart",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                  ]),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardE,
              leading: CircleAvatar(child: Icon(Icons.school_outlined)),
              title: Text('Projects'),
              subtitle: Text('Overall projects views'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Column(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Created famous 3 missionaries 3 cannibals crossing the river game.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      avatar: FaIcon(FontAwesomeIcons.github),
                      label: Text('GitHub Link'),
                      onPressed: () async {
                        const url =
                            'https://github.com/Shubham654/Game_of_Missionaries_and_Cannibals';

                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
