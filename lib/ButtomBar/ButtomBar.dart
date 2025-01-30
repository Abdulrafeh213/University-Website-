import 'package:flutter/material.dart';
import '../Admissions/Admissions.dart';

import '../About/AboutUs.dart';
import '../Download.dart';

class ButtomBar extends StatefulWidget {
  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                child: Column(
                  children: const [
                    Text(
                      'Salu GC Beside Degree College \nMain G.T Road Ghotki\n0723-681323\nghotkicampus@salu.edu.pk',
                      style: TextStyle(color: Color(0xFFffffff), fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(
                  'Quick Links',
                  style: TextStyle(
                      color: Color(0xFFffffff),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                },
                child: const Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),

              //

              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Download()),
                  );
                },
                child: const Text(
                  'Download',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),

              //

              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyHomePage()),
                },
                child: const Text(
                  'Scholarships',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(
                  'Admissions',
                  style: TextStyle(
                      color: Color(0xFFffffff),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Admissions()),
                  );
                },
                child: const Text(
                  'Distribution of Seats',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),

              //

              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                },
                child: const Text(
                  'Prospectus 2023',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),

              //
              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Admissions()),
                  );
                },
                child: const Text(
                  'Fee Structure',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(
                  'Resources',
                  style: TextStyle(
                      color: Color(0xFFffffff),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyHomePage()),
                },
                child: const Text(
                  'Sports Complex',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),

              //

              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Download(),
                    ),
                  );
                },
                child: const Text(
                  'Downloads',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),

              MaterialButton(
                hoverColor: Colors.pink,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyHomePage()),
                },
                child: const Text(
                  'Media Section',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              //
              MaterialButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyHomePage()),
                },
                child: const Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 4.1),
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
