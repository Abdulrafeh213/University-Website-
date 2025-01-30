import 'package:flutter/material.dart';
import '../routePage.dart';
import '../routes.dart';
import '/ButtomBar/ButtomBar.dart';
import 'PVCMessage.dart';
import 'BoxAreaMain.dart';
import 'Landingpage.dart';
import '../Navigation/Navbar.dart';
import 'NoticePanel.dart';
import 'Students.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          height: 100,
          decoration: const BoxDecoration(
            color: Color(0xCC0a2e54),
          ),
          child: Column(
            children: <Widget>[
              Navbar(),
            ],
          ),
        ),
        titleSpacing: 0.0,
        toolbarHeight: 100,
        toolbarOpacity: 0.8,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          //landing page
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF012951),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Landingpage(),
            ),
          ),

          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: Image.asset(
          //       "assets/images/landingpage.jpg",
          //       width: MediaQuery.of(context).size.width,
          //       fit: BoxFit.fill,
          //       height: 300,
          //     ),
          //   ),
          // ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFffffff),
            ),
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: BoxAreaMain(),
              ),
            ]),
          ),

          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFffffff),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: NoticePanel(),
            ),
          ),
          //students (why you choose)
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF034F84),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "WHY TO CHOOSE SHAH ABDUL LATIF UNIVERSITY GHOTKI CAMPUS?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF034F84),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Students(),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFffffff),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: PVCMessage(),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF093055),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ButtomBar(),
            ),
          ),
        ],
      ),

      // drawer: Drawer(),
    );
  }
}
