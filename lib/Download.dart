import 'package:flutter/material.dart';

import 'Navigation/Navbar.dart';
import 'ButtomBar/buttomBar.dart';

class Download extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: 100,
          decoration: BoxDecoration(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  // height: 40,
                  width: MediaQuery.of(context).size.width / 1.06,
                  decoration: BoxDecoration(
                      color: Color(0xFF034F84),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Text(
                            'Merit List 1',
                            style: TextStyle(
                                color: Color(0xFFffffff), fontSize: 18),
                          ),
                        ]),
                        Row(children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Admissions(),
                              //   ),
                              // );
                            },
                            child: Icon(
                              Icons.download,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  // height: 40,
                  width: MediaQuery.of(context).size.width / 1.06,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Text(
                            'Semester Form',
                            style: TextStyle(
                                color: Color(0xFFffffff), fontSize: 18),
                          ),
                        ]),
                        Row(children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Admissions(),
                              //   ),
                              // );
                            },
                            child: Icon(
                              Icons.download,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  // height: 40,
                  width: MediaQuery.of(context).size.width / 1.06,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Text(
                            'Challan Form',
                            style: TextStyle(
                                color: Color(0xFFffffff), fontSize: 18),
                          ),
                        ]),
                        Row(children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Admissions(),
                              //   ),
                              // );
                            },
                            child: Icon(
                              Icons.download,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
