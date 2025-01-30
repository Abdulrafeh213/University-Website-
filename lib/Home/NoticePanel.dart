import 'package:flutter/material.dart';

class NoticePanel extends StatefulWidget {
  const NoticePanel({super.key});

  @override
  State<NoticePanel> createState() => _NoticePanelState();
}

class _NoticePanelState extends State<NoticePanel> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 300,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    'Nofitications',
                    style: TextStyle(
                        color: Color(0xFF012951),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Admissions(),
                        //   ),
                        // );
                      },
                      child: Text(
                        'MR. Imran Mushtaque is new Exam Controller',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Sir. Khuda Dino Gopang is new coordinator of Students Affairs',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Dr. Allah Bux Lakhan Sahib is new Media Coordinator',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'The Orientation of 2023 will be shedule on 01 feb 2023',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
      SizedBox(width: 30, height: 20),
      Container(
        height: 300,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    'Events',
                    style: TextStyle(
                        color: Color(0xFF012951),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Admissions(),
                        //   ),
                        // );
                      },
                      child: Text(
                        'Culture Day Celebrating in SALU Ghotki Campus',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Election Commission Meetup for women vote',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'FareWall Party for the Students of CS19 Batch',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF034F84),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Culture Day Celebrating in SALU Ghotki Campus',
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
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
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2.1),
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
