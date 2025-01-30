import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project/AdmissionSystem/StudentPanel/challanForm.dart';
import 'package:project/AdmissionSystem/StudentPanel/studentPanel.dart';
import 'package:project/Home/Students.dart';

import 'basicInformation.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: -2,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF012951),
        ),
        width: MediaQuery.of(context).size.width / 4.5,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListTile(
                      leading: const Icon(LineIcons.home,
                          size: 25, color: Colors.white),
                      title: const Text(' Dashboard ',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentPanel()),
                        );
                      },
                    ),
                  ),
                  ListTile(
                    leading: const Icon(LineIcons.user,
                        size: 25, color: Colors.white),
                    title: const Text(' Application Form ',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChallanForm()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.description,
                        size: 25, color: Colors.white),
                    title: const Text(' Selection List ',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.description,
                        size: 25, color: Colors.white),
                    title: const Text(' Announcement ',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.description,
                        size: 25, color: Colors.white),
                    title: const Text(' Download Challan ',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    onTap: () {
                      // Navigator.pop(context);
                    },
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
