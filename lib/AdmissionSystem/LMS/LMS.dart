import 'package:flutter/material.dart';

import '../../Navigation/Navbar.dart';

class LMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(195, 20, 50, 1.0),
                  Color.fromRGBO(36, 11, 54, 1.0)
                ]),
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
      body: SingleChildScrollView(),
    );
  }
}
