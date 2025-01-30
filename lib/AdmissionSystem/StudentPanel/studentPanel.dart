import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project/AdmissionSystem/StudentPanel/challanForm.dart';
import 'package:project/AdmissionSystem/StudentPanel/navigationDrawer.dart';

import '../Login/login.dart';

class StudentPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopStudentPanel();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopStudentPanel();
        } else {
          return const MobileStudentPanel();
        }
      },
    );
  }
}

class DesktopStudentPanel extends StatelessWidget {
  const DesktopStudentPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Shah Abdul Latif University Ghotki Campus'),
          backgroundColor: const Color(0xCC0a2e54),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(LineIcons.bellAlt),
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                })
          ]),
      body: Row(
        children: <Widget>[
          NavDrawer(),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                // ignore: sort_child_properties_last
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 50),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'On the Insert tab, the galleries include items that are designed to coordinate with the overall look of your document. You can use these galleries to insert tables, headers, footers, lists, cover pages, and other document building blocks. When you create pictures, charts, or diagrams, they also coordinate with your current document look.\n\nYou can easily change the formatting of selected text in the document text by choosing a look for the selected text from the Quick Styles gallery on the Home tab. You can also format text directly by using the other controls on the Home tab. Most controls offer a choice of using the look from the current theme or using a format that you specify directly.',
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Color(0xFF012951)),
                          child: Row(children: const [
                            Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  'Bachelors Degree Program',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  'Shah Abdul Latif University Ghotki Campus, For the Academic Year 2024',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                          ]),
                        ),
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 2, color: Color(0xFF012951))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20),
                                Container(
                                  height: 400,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: ListView(
                                    children: [
                                      Center(
                                          child: Text(
                                        'Online Admission Form Status',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataTable(
                                        columns: [
                                          DataColumn(label: Text('')),
                                          DataColumn(label: Text(''))
                                        ],
                                        rows: [
                                          DataRow(cells: [
                                            DataCell(Text('Form Status')),
                                            DataCell(MaterialButton(
                                              hoverColor: Colors.pink,
                                              onPressed: () {},
                                              child: Text('Draft',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(Text('Form Remarks')),
                                            DataCell(MaterialButton(
                                              // hoverColor: Colors.pink,
                                              onPressed: () {},
                                              child: Text('',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(Text('Profile Photo')),
                                            DataCell(MaterialButton(
                                              hoverColor: Colors.pink,
                                              onPressed: () {},
                                              child: Text('verified',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(Text('Challan')),
                                            DataCell(MaterialButton(
                                              hoverColor: Colors.pink,
                                              onPressed: () {},
                                              child: Text('Verified',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                                Text('Additional \nDocuments')),
                                            DataCell(MaterialButton(
                                              onPressed: () {},
                                              hoverColor: Colors.pink,
                                              child: Text(
                                                  'Pending Verficiation',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )),
                                          ]),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  width: 40,
                                ),
                                Container(
                                  height: 400,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: ListView(
                                    children: [
                                      Center(
                                          child: Text(
                                        'Admission Form Information',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DataTable(
                                          columns: [
                                            DataColumn(label: Text('')),
                                            DataColumn(label: Text(''))
                                          ],
                                          rows: [
                                            DataRow(cells: [
                                              DataCell(
                                                  Text('Application Form')),
                                              DataCell(MaterialButton(
                                                hoverColor: Colors.pink,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ChallanForm()),
                                                  );
                                                },
                                                child: Text(
                                                    'Click Here to Complete Your Application Form',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )),
                                            ]),
                                            DataRow(cells: [
                                              DataCell(Text(
                                                  'Registration Fee Chalan')),
                                              DataCell(MaterialButton(
                                                // hoverColor: Colors.pink,
                                                onPressed: () {},
                                                child: Text(''),
                                              )),
                                            ]),
                                            DataRow(cells: [
                                              DataCell(Text('Form Review')),
                                              DataCell(MaterialButton(
                                                hoverColor: Colors.pink,
                                                onPressed: () {},
                                                child: Text('Review',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )),
                                            ]),
                                            DataRow(cells: [
                                              DataCell(Text(
                                                  'Pre-Entry Test Admit Card')),
                                              DataCell(MaterialButton(
                                                hoverColor: Colors.pink,
                                                onPressed: () {},
                                                child: Text('',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )),
                                            ]),
                                            DataRow(cells: [
                                              DataCell(
                                                  Text('Pre-Entry Test Score')),
                                              DataCell(MaterialButton(
                                                onPressed: () {},
                                                hoverColor: Colors.pink,
                                                child: Text('',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )),
                                            ]),
                                            DataRow(cells: [
                                              DataCell(Text('PET CPN')),
                                              DataCell(MaterialButton(
                                                onPressed: () {},
                                                hoverColor: Colors.pink,
                                                child: Text('',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )),
                                            ]),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}

class MobileStudentPanel extends StatelessWidget {
  const MobileStudentPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
