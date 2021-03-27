import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage('images/passport pic.jpg'),
                width: 200,
                height: 200,
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
            GestureDetector(
              onTap: () async {
                final Uri _emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'shubhamchambhare654@gmail.com',
                );
                launch(_emailLaunchUri.toString());
              },
              child: Container(
                width: 320,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.email, size: 30),
                    SizedBox(
                      width: 15,
                    ),
                    Text("shubhamchambhare654@gmail.com",
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                const url = 'https://www.linkedin.com/in/chambhare654/';

                if (await canLaunch(url)) {
                  await launch(url, forceSafariVC: false);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                width: 320,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("www.linkedin.com/chambhare654/",
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                width: 320,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    FaIcon(
                      FontAwesomeIcons.github,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("www.github.com/Shubham654",
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Wrap(
              spacing: 15.0,
              runSpacing: 10.0,
              children: [
                Chip(
                  avatar: FaIcon(
                    FontAwesomeIcons.python,
                    color: Colors.black87,
                  ),
                  label: Text('python'),
                ),
                Chip(
                  label: Text('flutter'),
                ),
                Chip(
                  label: Text('c'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
