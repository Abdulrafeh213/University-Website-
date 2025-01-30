import 'package:flutter/material.dart';
import 'package:project/AdmissionSystem/Singup/singup.dart';
import 'package:project/AdmissionSystem/StudentPanel/studentPanel.dart';
import 'package:quickalert/quickalert.dart';
import '../AdmissionSystem/AdminPanel/adminPanel.dart';
import '/About/AboutUs.dart';
import '/Home/MyHomePage.dart';
import '../Admissions/Admissions.dart';
import '../ContactUs/ContactUs.dart';
import '../Download.dart';
import 'LMS/LMS.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Admissions System",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 30),
              ),
              SizedBox(
                width: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Admissions()),
                      );
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingupPage()),
                      );
                      // Link(
                      // 'http://www.digitallibrary.edu.pk/shahlatifuni.html');
                    },
                    child: const Text(
                      'New Registration',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Download()),
                      // );
                    },
                    child: const Text(
                      'Undertaking',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.info,
                        title: 'No Updates Available',
                        text: 'Sorry We don`t have any update',
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Admissions()),
                      // );
                    },
                    child: const Text(
                      'Update/\nAnnouncement',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.info,
                        title: 'No Updates Available',
                        text: 'Sorry We don`t have any update',
                      );

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => StudentPanel()),
                      // );
                    },
                    child: const Text(
                      'Application Status',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AdminPanel()),
                      // );
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.info,
                        title: 'No Updates Available',
                        text: 'Sorry We don`t have any update',
                      );
                    },
                    child: const Text(
                      'Prospectus 2023',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 2,
            ),
            const Text(
              "SALU GHOTKI CAMPUS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ContactUs()),
                      // );
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.info,
                        title: 'No Updates Available',
                        text: 'Sorry We don`t have any update',
                      );
                    },
                    child: const Text(
                      'Undertaking',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  MaterialButton(
                    hoverColor: Color(0xCC2196F3),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Admissions()),
                      // );
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.info,
                        title: 'No Updates Available',
                        text: 'Sorry We don`t have any update',
                      );
                    },
                    child: const Text(
                      'Application Status',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
