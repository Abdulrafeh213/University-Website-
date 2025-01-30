import 'package:flutter/material.dart';
import 'package:project/AdmissionSystem/Login/login.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 400,
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "SHAH ABDUL LATIF UNIVERSITY \nGHOTKI CAMPUS VISION",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Education is the most powerful weapon which you can change the world.",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
              MaterialButton(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    " Apply now ",
                    style: TextStyle(
                      color: Color(0xFF034F84),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 20,
        height: 10,
      ),
      Container(
          height: 300,
          width: width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage(
                "assets/images/main.jpg",
              ),
              fit: BoxFit.fill,
            ),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2.05),
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
