// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactUsDesk extends StatefulWidget {
  @override
  State<ContactUsDesk> createState() => _ContactUsDeskState();
}

class _ContactUsDeskState extends State<ContactUsDesk> {
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final subjectController = TextEditingController();
  int _counter = -1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<dynamic> addData() async {
    final contact = FirebaseFirestore.instance.collection('ContactUs').doc();
    final json = {
      "name": nameController.text,
      "email": emailController.text,
      "phone": phoneController.text,
      "subject": subjectController.text,
      "message": messageController.text
    };
    await contact.set(json);
  }

  void cleartext() {
    emailController.clear();
    messageController.clear();
    nameController.clear();
    phoneController.clear();
    subjectController.clear();
  }

  // Future<void> insertrecord() async {
  //   if (name.text != "" ||
  //       email.text != "" ||
  //       subject.text != "" ||
  //       phone.text != "" ||
  //       message.text != "") {
  //     try {
  //       String uri = "http://192.168.56.1/flutter_form_api/record_insert.php";
  //       var res = await http.post(Uri.parse(uri), body: {
  //         "name": name.text,
  //         "email": email.text,
  //         "subject": subject.text,
  //         "phone": phone.text,
  //         "message": message.text,
  //       });

  //       var response = jsonDecode(res.body);
  //       if (response["success"] == "true") {
  //         print("record Inserted");
  //       } else {
  //         print("some isse");
  //       }
  //     } catch (e) {
  //       print(e);
  //     }
  //   } else {
  //     print('Fill all the fileds');
  //   }

  //     @override
  //     Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  //     }
  // }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'CONTACT WITH US',
            style: TextStyle(
                color: Color(0xFFffffff),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ];
  }

  List<Widget> pageChildren1(double width) {
    return <Widget>[
      Container(
        width: width,
      ),
      const SizedBox(
        width: 20,
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF012951))),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Name",
                hintStyle: TextStyle(
                    color: Color(0xFF012951), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF012951))),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                hintStyle: TextStyle(
                    color: Color(0xFF012951), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> pageChildren2(double width) {
    return <Widget>[
      Container(
        width: width,
      ),
      const SizedBox(
        width: 20,
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: subjectController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF012951))),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.book),
                hintText: "Subject",
                hintStyle: TextStyle(
                    color: Color(0xFF012951), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF012951))),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
                hintText: "Phone",
                hintStyle: TextStyle(
                    color: Color(0xFF012951), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> pageChildren3(double width) {
    return <Widget>[
      Container(
        width: width,
      ),
      const SizedBox(
        width: 20,
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(228, 247, 247, 247)),
        width: width * 2.05,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: messageController,
              maxLines: 3,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF012951))),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.book),
                hintText: "Message",
                hintStyle: TextStyle(
                    color: Color(0xFF012951), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> pageChildren4(double width) {
    return <Widget>[
      Container(
        width: width,
      ),
      const SizedBox(
        width: 20,
        height: 20,
      ),
      Container(
        width: width * 2.05,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFffffff),
                ),
                onPressed: () {
                  _incrementCounter();
                  addData(
                      // name: name,
                      // email: email,
                      // subject: subject,
                      // phone: phone,
                      // message: message
                      );
                  cleartext();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'submit',
                    style: TextStyle(
                        color: Color(0xFF012951),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
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
          return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: pageChildren(constraints.biggest.width)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                      children: pageChildren1(constraints.biggest.width / 3.3)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                      children: pageChildren2(constraints.biggest.width / 3.3)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                      children: pageChildren3(constraints.biggest.width / 3.3)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                      children: pageChildren4(constraints.biggest.width / 3.3)),
                ),
              ]);
        } else {
          return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: pageChildren(constraints.biggest.width)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                      children: pageChildren1(constraints.biggest.width)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                      children: pageChildren2(constraints.biggest.width)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                      children: pageChildren3(constraints.biggest.width)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                      children: pageChildren4(constraints.biggest.width)),
                ),
              ]);
        }
      },
    );
  }
}







//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Container(
//           height: 100,
//           decoration: BoxDecoration(
//             color: Color(0xCC0a2e54),
//           ),
//           child: Column(
//             children: <Widget>[
//               Navbar(),
//             ],
//           ),
//         ),
//         titleSpacing: 0.0,
//         toolbarHeight: 100,
//         toolbarOpacity: 0.8,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           alignment: Alignment.topLeft,
//                           width: MediaQuery.of(context).size.width / 3,
//                           height: 400,
//                           child: Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(15.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         alignment: Alignment.center,
//                                         width:
//                                             MediaQuery.of(context).size.width /
//                                                 3,
//                                         height: 100,
//                                         decoration: BoxDecoration(
//                                             border: Border.all(
//                                                 width: 2,
//                                                 color: Color(0xFF012951))),
//                                         child: Padding(
//                                             padding: EdgeInsets.all(10.0),
//                                             child: Column(
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Icon(
//                                                       Icons.location_on,
//                                                       color: Color(0xFF012951),
//                                                     ),
//                                                     SizedBox(width: 10),
//                                                     Text(
//                                                       'ADDRESS',
//                                                       style: TextStyle(
//                                                           fontSize: 20,
//                                                           color:
//                                                               Color(0xFF012951),
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 Column(
//                                                   children: [
//                                                     SizedBox(height: 10),
//                                                     Text(
//                                                       'Salu GC Beside Degree College Main G.T Road Ghotki',
//                                                       style: TextStyle(
//                                                         fontSize: 16,
//                                                         color:
//                                                             Color(0xFF012951),
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )
//                                               ],
//                                             )),
//                                       ),
//                                       SizedBox(height: 20),
//                                       Container(
//                                         alignment: Alignment.center,
//                                         width:
//                                             MediaQuery.of(context).size.width /
//                                                 3,
//                                         height: 100,
//                                         decoration: BoxDecoration(
//                                             border: Border.all(
//                                                 width: 2,
//                                                 color: Color(0xFF012951))),
//                                         child: Padding(
//                                             padding: EdgeInsets.all(10.0),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Icon(
//                                                       Icons.email,
//                                                       color: Color(0xFF012951),
//                                                     ),
//                                                     SizedBox(width: 10),
//                                                     Text(
//                                                       'E-MAIL',
//                                                       style: TextStyle(
//                                                           fontSize: 20,
//                                                           color:
//                                                               Color(0xFF012951),
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 Column(
//                                                   children: [
//                                                     SizedBox(height: 10),
//                                                     Text(
//                                                       'ghotkicampus@salu.edu.pk',
//                                                       style: TextStyle(
//                                                         fontSize: 16,
//                                                         color:
//                                                             Color(0xFF012951),
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )
//                                               ],
//                                             )),
//                                       ),
//                                       SizedBox(height: 20),
//                                       Container(
//                                         alignment: Alignment.center,
//                                         width:
//                                             MediaQuery.of(context).size.width /
//                                                 3,
//                                         height: 100,
//                                         decoration: BoxDecoration(
//                                             border: Border.all(
//                                                 width: 2,
//                                                 color: Color(0xFF012951))),
//                                         child: Padding(
//                                             padding: EdgeInsets.all(10.0),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Icon(
//                                                       Icons.contact_phone,
//                                                       color: Color(0xFF012951),
//                                                     ),
//                                                     SizedBox(width: 10),
//                                                     Text(
//                                                       'PHONE',
//                                                       style: TextStyle(
//                                                           fontSize: 20,
//                                                           color:
//                                                               Color(0xFF012951),
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 Column(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.start,
//                                                   children: [
//                                                     SizedBox(height: 10),
//                                                     Text(
//                                                       '0723-681323',
//                                                       style: TextStyle(
//                                                         fontSize: 16,
//                                                         color:
//                                                             Color(0xFF012951),
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )
//                                               ],
//                                             )),
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 20),

//                         // Contact Us Form
//                         Container(
//                           width: MediaQuery.of(context).size.width / 1.8,
//                           height: 430,
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Column(
//                                   children: [
//                                     Padding(
//                                       padding: EdgeInsets.all(15.0),
//                                       child: Text(
//                                         'CONTACT WITH US',
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             color: Color(0xFF012951),
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Flexible(
//                                           flex: 1,
//                                           child: Padding(
//                                             padding: EdgeInsets.all(15.0),
//                                             child: TextField(
//                                               controller: name,
//                                               decoration: InputDecoration(
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0xFF012951))),
//                                                 border: OutlineInputBorder(),
//                                                 prefixIcon:
//                                                     Icon(Icons.account_circle),
//                                                 hintText: "Name",
//                                                 hintStyle: TextStyle(
//                                                     color: Color(0xFF012951),
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Flexible(
//                                           flex: 1,
//                                           child: Padding(
//                                             padding: EdgeInsets.all(15.0),
//                                             child: TextField(
//                                               controller: email,
//                                               decoration: InputDecoration(
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0xFF012951))),
//                                                 border: OutlineInputBorder(),
//                                                 prefixIcon: Icon(Icons.email),
//                                                 hintText: "Email",
//                                                 hintStyle: TextStyle(
//                                                     color: Color(0xFF012951),
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Flexible(
//                                           flex: 1,
//                                           child: Padding(
//                                             padding: EdgeInsets.all(15.0),
//                                             child: TextField(
//                                               controller: subject,
//                                               decoration: InputDecoration(
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0xFF012951))),
//                                                 border: OutlineInputBorder(),
//                                                 prefixIcon: Icon(Icons.book),
//                                                 hintText: "Subject",
//                                                 hintStyle: TextStyle(
//                                                     color: Color(0xFF012951),
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Flexible(
//                                           flex: 1,
//                                           child: Padding(
//                                             padding: EdgeInsets.all(15.0),
//                                             child: TextField(
//                                               controller: phone,
//                                               decoration: InputDecoration(
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0xFF012951))),
//                                                 border: OutlineInputBorder(),
//                                                 prefixIcon: Icon(Icons.phone),
//                                                 hintText: "Phone",
//                                                 hintStyle: TextStyle(
//                                                     color: Color(0xFF012951),
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Flexible(
//                                           flex: 1,
//                                           child: Padding(
//                                             padding: EdgeInsets.all(15.0),
//                                             child: TextField(
//                                               controller: message,
//                                               maxLines: 3,
//                                               decoration: InputDecoration(
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0xFF012951))),
//                                                 border: OutlineInputBorder(),
//                                                 prefixIcon: Icon(Icons.book),
//                                                 hintText: "Message",
//                                                 hintStyle: TextStyle(
//                                                     color: Color(0xFF012951),
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.symmetric(
//                                               vertical: 10, horizontal: 20),
//                                           child: ElevatedButton(
//                                             style: ElevatedButton.styleFrom(
//                                               primary: Color(0xFF012951),
//                                             ),
//                                             onPressed: () {
//                                               insertrecord();
//                                               cleartext();
//                                             },
//                                             child: Padding(
//                                               padding: EdgeInsets.symmetric(
//                                                   vertical: 10, horizontal: 20),
//                                               child: Text(
//                                                 'submit',
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 20),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ]),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             Container(
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: Color(0xFF093055),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                 child: ButtomBar(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
