import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project/AdmissionSystem/StudentPanel/basicInformation.dart';
import 'package:project/AdmissionSystem/StudentPanel/navigationDrawer.dart';
import 'package:project/AdmissionSystem/StudentPanel/studentPanel.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:searchfield/searchfield.dart';
import '/AdmissionSystem/utils/constanst.dart';
import '../Navbar.dart';

import 'package:file_picker/file_picker.dart';
import '../Login/login.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopAdditionalInformation();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopAdditionalInformation();
        } else {
          return MobileAdditionalInformation();
        }
      },
    );
  }
}

class DesktopAdditionalInformation extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var result;
  TextEditingController dateCtl = TextEditingController();
  TextEditingController fullName = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();
  // TextEditingController dateCtl = TextEditingController();

  void _pickFile() async {
    // opens storage to pick files and the picked file or files
    // are assigned into result and if no file is chosen result is null.
    // you can also toggle "allowMultiple" true or false depending on your need
    result = await FilePicker.platform.pickFiles(allowMultiple: false);

    // if no file is picked
    if (result == null) return;

    // we will log the name, size and path of the
    // first picked file (if multiple are selected)
    print(result.files.first.name);
    print(result.files.first.size);
    print(result.files.first.path);
  }

  // void _openFile(PlatformFile file) {
  //   OpenFile.open(file.path);
  // }

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
        children: [
          NavDrawer(),
          Expanded(
            child: Form(
              key: _formKey,
              child: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BasicInformation()),
                                );
                              },
                              child: Text(
                                'Basic Information',
                                style: TextStyle(
                                    color: Color(0xFF0a2e54),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AdditionalInformation()),
                                );
                              },
                              child: Text(
                                'Additional Information',
                                style: TextStyle(
                                    color: Color(0xFF0a2e54),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ]),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 50, horizontal: 80),
                          child: Wrap(children: [
                            //button area
                            Row(
                              children: [
                                SizedBox(
                                  height: 300,
                                  width: gWidth / 7,
                                  child: Column(
                                    children: [
                                      Text(
                                        'CNIC Front Size',
                                        style: TextStyle(
                                            color: Color(0xFF0a2e54),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 190,
                                        width: gHeight / 2,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                        ),
                                        child: Column(
                                          children: [],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      MaterialButton(
                                          color: Color(0xFF0a2e54),
                                          minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          onPressed: () {
                                            _pickFile();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Text('Pick a file',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                SizedBox(
                                  height: 300,
                                  width: gWidth / 7,
                                  child: Column(
                                    children: [
                                      Text(
                                        'CNIC Back Size',
                                        style: TextStyle(
                                            color: Color(0xFF0a2e54),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 190,
                                        width: gHeight / 2,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                        ),
                                        child: Column(
                                          children: [],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      MaterialButton(
                                          color: Color(0xFF0a2e54),
                                          minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          onPressed: () {
                                            _pickFile();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Text('Pick a file',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                SizedBox(
                                  height: 300,
                                  width: gWidth / 7,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Domicile',
                                        style: TextStyle(
                                            color: Color(0xFF0a2e54),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 190,
                                        width: gHeight / 2,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                        ),
                                        child: Column(
                                          children: [],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      MaterialButton(
                                          color: Color(0xFF0a2e54),
                                          minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          onPressed: () {
                                            _pickFile();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Text('Pick a file',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                SizedBox(
                                  height: 300,
                                  width: gWidth / 7,
                                  child: Column(
                                    children: [
                                      Text(
                                        'PRC Form-C',
                                        style: TextStyle(
                                            color: Color(0xFF0a2e54),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 190,
                                        width: gHeight / 2,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                        ),
                                        child: Column(
                                          children: [],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      MaterialButton(
                                          color: Color(0xFF0a2e54),
                                          minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          onPressed: () {
                                            _pickFile();
                                            print(result.files.first.name);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Text('Pick a file',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 70,
                              width: gWidth,
                              child: Row(
                                children: [
                                  MaterialButton(
                                      color: Color(0xFF0a2e54),
                                      minWidth:
                                          MediaQuery.of(context).size.width /
                                              10,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StudentPanel()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        child: Text('Upload Documents',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                  SizedBox(width: 40),
                                  MaterialButton(
                                      color: Colors.green,
                                      minWidth:
                                          MediaQuery.of(context).size.width /
                                              10,
                                      onPressed: () {
                                        // Navigator.push(
                                        //   // context,
                                        //   // MaterialPageRoute(
                                        //   //     builder: (context) =>
                                        //   //         StudentPanel()),
                                        // );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        child: Text('Upload Docuemnts and Next',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // child: Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          //   child: Wrap(
          //     children: [
          //       SizedBox(),
          //       FittedBox(
          //         fit: BoxFit.cover,
          //         child: RichText(
          //             text: TextSpan(
          //                 text:
          //                     "Downloaded Your system Generated Challan of Admission Process Before?    ",
          //                 style: TextStyle(
          //                     color: Color(0xFF012951), fontSize: 20),
          //                 children: const [
          //               TextSpan(
          //                 text: "Download",
          //                 style: TextStyle(
          //                     fontSize: 20,
          //                     color: Color(0xFF012951),
          //                     fontWeight: FontWeight.bold),
          //               )
          //             ])),
          //       ),
          //       SizedBox(),
          //       SizedBox(
          //         height: 70,
          //         width: gWidth / 2.2,
          //         child: TextFormField(
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'Please Enter Value';
          //             }
          //             return null;
          //           },
          //           // onSaved: (value) => _password = value,
          //           textInputAction: TextInputAction.next,

          //           style: const TextStyle(
          //               color: Color(0xFF0a2e54), fontSize: 20),
          //           decoration: const InputDecoration(
          //               suffix: Icon(
          //                 LineIcons.eyeSlash,
          //                 color: Color(0xFF0a2e54),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //               ),
          //               enabledBorder: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                       color: Color(0xFF0a2e54), width: 2)),
          //               hintText: '0875 Tando Adam',
          //               labelText: "Bank Branch",
          //               labelStyle: TextStyle(
          //                   color: Color(0xFF0a2e54),
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //       ),
          //       SizedBox(width: 20),
          //       SizedBox(
          //         height: 70,
          //         width: gWidth / 2.2,
          //         child: TextFormField(
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'Please Enter Value';
          //             }
          //             return null;
          //           },
          //           // onSaved: (value) => _password = value,
          //           textInputAction: TextInputAction.next,

          //           style: const TextStyle(
          //               color: Color(0xFF0a2e54), fontSize: 20),
          //           decoration: const InputDecoration(
          //               suffix: Icon(
          //                 LineIcons.eyeSlash,
          //                 color: Color(0xFF0a2e54),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //               ),
          //               enabledBorder: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                       color: Color(0xFF0a2e54), width: 2)),
          //               hintText: '0875 Tando Adam',
          //               labelText: "Bank Branch",
          //               labelStyle: TextStyle(
          //                   color: Color(0xFF0a2e54),
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //       ),

          //       SizedBox(
          //         height: 130,
          //         width: gWidth / 3,
          //         child: TextFormField(
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'Please Enter Value';
          //             }
          //             return null;
          //           },
          //           // onSaved: (value) => _password = value,
          //           textInputAction: TextInputAction.next,

          //           style: const TextStyle(
          //               color: Color(0xFF0a2e54), fontSize: 20),
          //           decoration: const InputDecoration(
          //               suffix: Icon(
          //                 LineIcons.eyeSlash,
          //                 color: Color(0xFF0a2e54),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //               ),
          //               enabledBorder: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                       color: Color(0xFF0a2e54), width: 2)),
          //               hintText: '0875 Tando Adam',
          //               labelText: "Bank Branch",
          //               labelStyle: TextStyle(
          //                   color: Color(0xFF0a2e54),
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //       ),

          //       SizedBox(
          //         height: 130,
          //         width: gWidth / 3,
          //         child: TextFormField(
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'Please Enter Value';
          //             }
          //             return null;
          //           },
          //           // onSaved: (value) => _password = value,
          //           textInputAction: TextInputAction.next,

          //           style: const TextStyle(
          //               color: Color(0xFF0a2e54), fontSize: 20),
          //           decoration: const InputDecoration(
          //               suffix: Icon(
          //                 LineIcons.eyeSlash,
          //                 color: Color(0xFF0a2e54),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //               ),
          //               enabledBorder: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                       color: Color(0xFF0a2e54), width: 2)),
          //               hintText: '0875 Tando Adam',
          //               labelText: "Bank Branch",
          //               labelStyle: TextStyle(
          //                   color: Color(0xFF0a2e54),
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //       ),

          //       SizedBox(
          //         height: 130,
          //         width: gWidth / 3,
          //         child: TextFormField(
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'Please Enter Value';
          //             }
          //             return null;
          //           },
          //           // onSaved: (value) => _password = value,
          //           textInputAction: TextInputAction.next,

          //           style: const TextStyle(
          //               color: Color(0xFF0a2e54), fontSize: 20),
          //           decoration: const InputDecoration(
          //               suffix: Icon(
          //                 LineIcons.eyeSlash,
          //                 color: Color(0xFF0a2e54),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //               ),
          //               enabledBorder: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                       color: Color(0xFF0a2e54), width: 2)),
          //               hintText: '0875 Tando Adam',
          //               labelText: "Bank Branch",
          //               labelStyle: TextStyle(
          //                   color: Color(0xFF0a2e54),
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //       ),

          //       //
          //       TextFormField(
          //         validator: (value) {
          //           if (value!.isEmpty) {
          //             return 'Please Enter Value';
          //           }
          //           return null;
          //         },
          //         // onSaved: (value) => _password = value,
          //         textInputAction: TextInputAction.next,

          //         style:
          //             const TextStyle(color: Color(0xFF0a2e54), fontSize: 20),
          //         decoration: const InputDecoration(
          //             suffix: Icon(
          //               LineIcons.eyeSlash,
          //               color: Color(0xFF0a2e54),
          //             ),
          //             focusedBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //             ),
          //             enabledBorder: OutlineInputBorder(
          //                 borderSide:
          //                     BorderSide(color: Color(0xFF0a2e54), width: 2)),
          //             hintText: '0875 Tando Adam',
          //             labelText: "Bank Branch",
          //             labelStyle: TextStyle(
          //                 color: Color(0xFF0a2e54),
          //                 fontSize: 18,
          //                 fontWeight: FontWeight.bold)),
          //       ),
          //       TextFormField(
          //         validator: (value) {
          //           if (value!.isEmpty) {
          //             return 'Please Enter Value';
          //           }
          //           return null;
          //         },
          //         // onSaved: (value) => _password = value,
          //         textInputAction: TextInputAction.next,

          //         style:
          //             const TextStyle(color: Color(0xFF0a2e54), fontSize: 20),
          //         decoration: const InputDecoration(
          //             suffix: Icon(
          //               LineIcons.eyeSlash,
          //               color: Color(0xFF0a2e54),
          //             ),
          //             focusedBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Color(0xFF0a2e54)),
          //             ),
          //             enabledBorder: OutlineInputBorder(
          //                 borderSide:
          //                     BorderSide(color: Color(0xFF0a2e54), width: 2)),
          //             hintText: '0875 Tando Adam',
          //             labelText: "Bank Branch",
          //             labelStyle: TextStyle(
          //                 color: Color(0xFF0a2e54),
          //                 fontSize: 18,
          //                 fontWeight: FontWeight.bold)),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF0a2e54),
      ),
    );
  }
}

class MobileAdditionalInformation extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var myKey;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
        body: Form(
          key: _formKey,
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.4,
                  decoration: BoxDecoration(
                      color: Color(0xFF012951),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      //singup
                      Row(children: [
                        FadeInLeft(
                          delay: Duration(milliseconds: 400),
                          child: Container(
                            margin: EdgeInsets.only(top: 50, left: 50),
                            width: gWidth / 3,
                            height: gHeight / 18,
                            child: FittedBox(
                              child: Text("Singup",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ]),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 800),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Email',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          suffix: null,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Email",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      //EmailVerify
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 1200),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Password',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Verify Email",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 1600),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.identificationCard,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter CNIC Number',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          suffix: null,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "CNIC Number",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      //Mobile Number
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 1800),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.phone,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Cell Number',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Mobile No.",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 2000),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.identificationBadge,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Your Full Name',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Full Name",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      //Father Name
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 2400),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.identificationBadge,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Father Name',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Fathers Name",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 2800),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.alternateIdentificationCard,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Surname',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          suffix: null,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Surname",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      //PasswordField
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 3200),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.genderless,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,

                                    //mode of dropdown
                                    // key.myKey,
                                    // //to show search box
                                    // showSearchBox: true,
                                    // showSelectedItem: true,
                                    //list of dropdown items
                                    //   items: [
                                    //     "India",
                                    //     "USA",
                                    //     "Brazil",
                                    //     "Canada",
                                    //     "Australia",
                                    //     "Singapore"
                                    //   ],
                                    //   label: "Country",
                                    //   onChanged: print,
                                    //   //show selected item
                                    //   selectedItem: "India",
                                    // ),
                                    child: SearchField(
                                      suggestions: const [],
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Gender',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,

                                      searchInputDecoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade200,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          labelText: "Gender",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 2600),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.alternateUnlock,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Password',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          suffix: Icon(
                                            LineIcons.eyeSlash,
                                            color: Colors.white,
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Password",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),

                      //PasswordField
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 4000),
                          child: Container(
                            width: gWidth / 1.1,
                            height: gHeight / 15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.alternateUnlock,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    height: 130,
                                    width: gWidth / 1.6,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.warning,
                                            text: 'Please Enter Password',
                                            title: 'Fill All the Fields',
                                            autoCloseDuration:
                                                const Duration(seconds: 2),
                                          );
                                        }
                                        return null;
                                      },
                                      // onSaved: (value) => _password = value,
                                      textInputAction: TextInputAction.next,
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: InputDecoration(
                                          suffix: Icon(
                                            LineIcons.eyeSlash,
                                            color: Colors.white,
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          labelText: "Retype Password",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 4400),
                              child: Container(
                                // margin: EdgeInsets.only(top: 20),
                                width: gWidth * 4,
                                height: gHeight / 18,
                                child: FittedBox(
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          "By singing up, you're agree to our ",
                                      style: TextStyle(color: Colors.white),
                                      children: const [
                                        TextSpan(
                                          text: "Terms & Conditions",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: " and ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Privacy Policy",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: FadeInDown(
                          delay: Duration(milliseconds: 4800),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: gWidth,
                            height: gHeight / 12,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  QuickAlert.show(
                                    context: context,
                                    type: QuickAlertType.error,
                                    text: 'Fill all the Fields',
                                    title: 'Singup Failed',
                                  );

                                  // Connect to database and create a new user
                                  // print(_name);
                                  // print(_email);
                                  // print(_password);
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                }
                              },
                              child: Text("Singup"),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                // backgroundColor: MaterialStateProperty.all(buttonColor)
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: FadeInDown(
                            delay: Duration(milliseconds: 5200),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Container(
                                // margin: EdgeInsets.only(top: 20),
                                width: gWidth,
                                height: gHeight / 25,
                                child: FittedBox(
                                  child: RichText(
                                      text: TextSpan(
                                          text: "Joined Us Before?    ",
                                          style: TextStyle(color: Colors.white),
                                          children: const [
                                        TextSpan(
                                          text: "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ])),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
