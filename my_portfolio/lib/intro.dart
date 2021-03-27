import 'package:flutter/material.dart';
import 'package:my_portfolio/contact_me.dart';

class Intro extends StatefulWidget {
  Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shubham's Portfolio"),
        ),
        body: FloatingActionButton.extended(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Portfolio()));
            // Respond to button press
          },
          icon: Icon(Icons.add),
          label: Text('EXTENDED'),
        ));
  }
}
