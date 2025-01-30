import 'package:flutter/material.dart';
import 'package:project/AdmissionSystem/Singup/singup.dart';
import 'package:project/AdmissionSystem/LMS/LMS.dart';
import 'package:project/AdmissionSystem/StudentPanel/challanForm.dart';
import 'package:project/Download.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import '../Admissions/Admissions.dart';

class BoxAreaMain extends StatefulWidget {
  const BoxAreaMain({super.key});

  @override
  State<BoxAreaMain> createState() => _BoxAreaMainState();
}

class _BoxAreaMainState extends State<BoxAreaMain> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Admissions(),
                    ),
                  );
                },
                child: Text(
                  'Bachelors Degree program',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 20,
        height: 10,
      ),
      Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(228, 247, 247, 247),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Admissions(),
                  //   ),
                  // );

                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.info,
                    title: 'Not Update',
                    text: 'Sorry We don`t update Catelog',
                  );
                },
                child: Text(
                  'Catalog',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> pageChildren1(double width) {
    return <Widget>[
      Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChallanForm(),
                    ),
                  );
                  // QuickAlert.show(
                  //   context: context,
                  //   type: QuickAlertType.info,
                  //   title: 'No Updates Available',
                  //   text: 'Sorry We don`t have any update',
                  // );
                },
                child: Text(
                  'Updates / Announcements',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 20,
        height: 10,
      ),
      Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(228, 247, 247, 247),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingupPage(),
                    ),
                  );
                },
                child: Text(
                  'New Rigestration',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> pageChildren2(double width) {
    return <Widget>[
      Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LMS(),
                    ),
                  );
                },
                child: Text(
                  'Learning Management System',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 20,
        height: 10,
      ),
      Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(228, 247, 247, 247),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Admissions(),
                  //   ),
                  // );

                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.info,
                    title: 'Not Updated',
                    text: 'Sorry We don`t have any update',
                  );
                },
                child: Text(
                  'Candidate Profile',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> pageChildren3(double width) {
    return <Widget>[
      Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Admissions(),
                  //   ),
                  // );
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.info,
                    title: 'No Updates Available',
                    text: 'Sorry We don`t have any update',
                  );
                },
                child: Text(
                  'Scholarships',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 20,
        height: 10,
      ),
      Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(228, 247, 247, 247),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Admissions(),
                  //   ),
                  // );
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.info,
                    title: 'No Updates Available',
                    text: 'Sorry We don`t have any update',
                  );
                },
                child: Text(
                  'HEC Digital library',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> pageChildren4(double width) {
    return <Widget>[
      Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Download(),
                    ),
                  );
                },
                child: Text(
                  'Downloads',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 20,
        height: 10,
      ),
      Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(228, 247, 247, 247),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Admissions(),
                  //   ),
                  // );
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.info,
                    title: 'No Updates Available',
                    text: 'Sorry We don`t have any update',
                  );
                },
                child: Text(
                  'Pic Gallary',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> pageChildren5(double width) {
    return <Widget>[
      Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Admissions(),
                    ),
                  );
                },
                child: Text(
                  'Admissions',
                  style: TextStyle(
                      color: Color(0xFF012951),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              children: pageChildren(
                                  constraints.biggest.width / 4.3)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              children: pageChildren1(
                                  constraints.biggest.width / 4.3)),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              children: pageChildren2(
                                  constraints.biggest.width / 4.3)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              children: pageChildren3(
                                  constraints.biggest.width / 4.3)),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              children: pageChildren4(
                                  constraints.biggest.width / 4.3)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              children: pageChildren5(
                                  constraints.biggest.width / 4.3)),
                        ),
                      ],
                    ),
                  ],
                ),
              ]);
        } else {
          return Column(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: pageChildren(constraints.biggest.width / 2.3)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: pageChildren1(constraints.biggest.width / 2.3)),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: pageChildren2(constraints.biggest.width / 2.3)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: pageChildren3(constraints.biggest.width / 2.3)),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: pageChildren4(constraints.biggest.width / 2.3)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: pageChildren5(constraints.biggest.width / 2.3)),
                ),
              ],
            ),
          ]);
        }
      },
    );
  }
}
