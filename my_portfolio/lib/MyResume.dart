import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

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
              subtitle: Text('My overall qualification'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text("data")),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardC,
              leading: CircleAvatar(child: Icon(Icons.star_outline_outlined)),
              title: Text('Technical Skills'),
              subtitle: Text('My overall qualification'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text("data")),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardD,
              leading: CircleAvatar(child: Icon(Icons.code_sharp)),
              title: Text('Languages'),
              subtitle: Text('My overall qualification'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text("data")),
                ),
              ],
            ),
            ExpansionTileCard(
              key: cardE,
              leading: CircleAvatar(child: Icon(Icons.school_outlined)),
              title: Text('Projects'),
              subtitle: Text('My overall qualification'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text("data")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
