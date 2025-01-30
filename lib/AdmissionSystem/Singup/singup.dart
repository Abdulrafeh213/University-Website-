import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project/AdmissionSystem/Singup/roundButton.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:searchfield/searchfield.dart';
import '/AdmissionSystem/utils/constanst.dart';
import '../Navbar.dart';
import '../Login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopSingupPage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopSingupPage();
        } else {
          return MobileSingupPage();
        }
      },
    );
  }
}

class DesktopSingupPage extends StatefulWidget {
  @override
  State<DesktopSingupPage> createState() => _DesktopSingupPageState();
}

class _DesktopSingupPageState extends State<DesktopSingupPage> {
  bool loading = false;

  final _formKey = GlobalKey<FormState>();
  bool showProgress = false;
  bool visible = false;

  final emailController = TextEditingController();
  final cnicController = TextEditingController();
  final mobileController = TextEditingController();
  final nameController = TextEditingController();
  final fnameController = TextEditingController();
  final surnameController = TextEditingController();
  final genderController = TextEditingController();
  final passController = TextEditingController();
  final rool = 'Student';
  FirebaseAuth _auth = FirebaseAuth.instance;

  // Future<dynamic> addData() async {
  //   final singUp = FirebaseFirestore.instance.collection('SingUp').doc();
  //   // FirebaseAuth.instance.sendSignInLinkToEmail(
  //   //     email: emailController.text, actionCodeSettings: )
  //   // .catchError((onError) => print('Error sending email verification $onError'))
  //   // .then((value) => print('Successfully sent email verification'));

  //   final json = {
  //     "email": emailController.text,
  //     "cnic": cnicController.text,
  //     "mobile": mobileController.text,
  //     "name": nameController.text,
  //     "fname": fnameController.text,
  //     "surname": surnameController.text,
  //     "gender": genderController.text,
  //   };
  //   await singUp.set(json);
  // }

  void cleartext() {
    emailController.clear();
    cnicController.clear();
    mobileController.clear();
    nameController.clear();
    fnameController.clear();
    surnameController.clear();
    genderController.clear();
    passController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1.13,
                decoration: BoxDecoration(
                    color: Color(0xFF012951),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Column(
                    children: [
                      //singup
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FadeInLeft(
                            delay: Duration(milliseconds: 400),
                            child: Container(
                              margin: EdgeInsets.only(top: 10, right: 900),
                              width: gWidth / 2,
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
                        ),
                        SizedBox(height: 10),
                      ]),

                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 800),
                              child: Container(
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: emailController,

                                          validator: (value) {
                                            if (value!.length == 0) {
                                              return "Email cannot be empty";
                                            }
                                            if (!RegExp(
                                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                                .hasMatch(value)) {
                                              QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.warning,
                                                text:
                                                    'Please enter a valid email',
                                                title: 'Email not valid',
                                                autoCloseDuration:
                                                    const Duration(seconds: 1),
                                              );
                                            } else {
                                              return null;
                                            }
                                          },

                                          // onSaved: (value) => _password = value,
                                          textInputAction: TextInputAction.next,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              suffix: null,
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                          //CNIC
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 1600),
                              child: Container(
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.identificationCard,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: cnicController,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.warning,
                                                text:
                                                    'Please Enter CNIC Number',
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
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              suffix: null,
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.phone,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: mobileController,
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.warning,
                                                text:
                                                    'Please Enter Cell Number',
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
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                          //Name Field
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 2000),
                              child: Container(
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.identificationBadge,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: nameController,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.warning,
                                                text:
                                                    'Please Enter Your Full Name',
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
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.identificationBadge,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: fnameController,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.warning,
                                                text:
                                                    'Please Enter Father Name',
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
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                          //Surname
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 2800),
                              child: Container(
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.alternateIdentificationCard,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: surnameController,
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
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              suffix: null,
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                          //Gender Field
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 3200),
                              child: Container(
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.alternateIdentificationCard,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: genderController,
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
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              suffix: null,
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                          //Password
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: FadeInDown(
                              delay: Duration(milliseconds: 2600),
                              child: Container(
                                width: gWidth / 2.3,
                                height: gHeight / 9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.alternateUnlock,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 130,
                                        width: gWidth / 2.6,
                                        child: TextFormField(
                                          controller: passController,
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
                                              color: Colors.white,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                              suffix: Icon(
                                                LineIcons.eyeSlash,
                                                color: Colors.white,
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
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
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Row(
                            children: [
                              //Password
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: FadeInDown(
                                  delay: Duration(milliseconds: 4400),
                                  child: Container(
                                    // margin: EdgeInsets.only(top: 20),
                                    width: gHeight,
                                    height: gHeight / 25,
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
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Singup
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: FadeInDown(
                                  delay: Duration(milliseconds: 4800),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: gHeight,
                                    height: gHeight / 12,
                                    child: RoundButton(
                                      title: 'Singup',
                                      loading: loading,
                                      onTap: () async {
                                        setState(() {
                                          showProgress = true;
                                        });
                                        signUp(emailController.text,
                                            passController.text);
                                        // if (_formKey.currentState!.validate()) {
                                        //   setState(() {
                                        //     loading = true;
                                        //   });

                                        //   try {
                                        //     final credential = await FirebaseAuth
                                        //         .instance
                                        //         .createUserWithEmailAndPassword(
                                        //       email: emailController.text
                                        //           .toString(),
                                        //       password: passController.text
                                        //           .toString(),
                                        //     )
                                        //         .then((value) {

                                        //       // addData();
                                        //       cleartext();
                                        //       Navigator.push(
                                        //         context,
                                        //         MaterialPageRoute(
                                        //             builder: (context) =>
                                        //                 LoginPage()),
                                        //       );
                                        //       setState(() {
                                        //         loading = false;
                                        //       });
                                        //     });
                                        //     await credential
                                        //         .SentEmailVerification();
                                        //   } on FirebaseAuthException catch (e) {
                                        //     if (e.code == 'weak-password') {
                                        //       QuickAlert.show(
                                        //         context: context,
                                        //         type: QuickAlertType.warning,
                                        //         text: 'Creditions not match',
                                        //         title: 'Fill All the Fields',
                                        //         autoCloseDuration:
                                        //             const Duration(seconds: 2),
                                        //       );
                                        //     } else if (e.code ==
                                        //         'email-already-in-use') {
                                        //       QuickAlert.show(
                                        //         context: context,
                                        //         type: QuickAlertType.warning,
                                        //         text: 'Email already exist',
                                        //         title:
                                        //             'please choose another email',
                                        //         autoCloseDuration:
                                        //             const Duration(seconds: 2),
                                        //       );
                                        //     }
                                        //   } catch (e) {
                                        //     (e);
                                        //   }

                                        //   // var acs = ActionCodeSettings(
                                        //   //     // URL you want to redirect back to. The domain (www.example.com) for this
                                        //   //     // URL must be whitelisted in the Firebase Console.
                                        //   //     url:
                                        //   //         'https://www.example.com/finishSignUp?cartId=1234',
                                        //   //     // This must be true
                                        //   //     handleCodeInApp: true,
                                        //   //     iOSBundleId: 'com.example.ios',
                                        //   //     androidPackageName:
                                        //   //         'com.example.android',
                                        //   //     // installIfNotAvailable
                                        //   //     androidInstallApp: true,
                                        //   //     // minimumVersion
                                        //   //     androidMinimumVersion: '12');
                                        //   // FirebaseAuth.instance
                                        //   //     .sendSignInLinkToEmail(
                                        //   //         email: emailController.text
                                        //   //             .toString(),
                                        //   //         actionCodeSettings: acs)
                                        //   //     .catchError((onError) => print(
                                        //   //         'Error sending email verification $onError'))
                                        //   //     .then((value) => print(
                                        //   //         'Successfully sent email verification'));

                                        //   // _auth
                                        //   //     .createUserWithEmailAndPassword(
                                        //   //         email: emailController.text
                                        //   //             .toString(),
                                        //   //         password: passController.text
                                        //   //             .toString())
                                        //   //     .then((value) {
                                        //   //   addData();
                                        //   //   cleartext();
                                        //   //   Navigator.push(
                                        //   //     context,
                                        //   //     MaterialPageRoute(
                                        //   //         builder: (context) =>
                                        //   //             LoginPage()),
                                        //   //   );
                                        //   //   setState(() {
                                        //   //     loading = false;
                                        //   //   });
                                        //   // }).onError((error, stackTrace) {
                                        //   //   QuickAlert.show(
                                        //   //     context: context,
                                        //   //     type: QuickAlertType.warning,
                                        //   //     text: error
                                        //   //         .toString()
                                        //   //         .characters
                                        //   //         .string,
                                        //   //     title: 'Fill All the Fields',
                                        //   //     // autoCloseDuration:
                                        //   //     //     const Duration(seconds: 2),
                                        //   //   );

                                        //   setState(() {
                                        //     loading = false;
                                        //   });
                                        //   // });
                                        // }
                                      },
                                      // child: Center(
                                      //     child: loading
                                      //         ? CircularProgressIndicator()
                                      //         : Text("Singup")),
                                      // style: ButtonStyle(
                                      //   shape: MaterialStateProperty.all(
                                      //     RoundedRectangleBorder(
                                      //       borderRadius:
                                      //           BorderRadius.circular(15),
                                      //     ),
                                      //   ),
                                      // backgroundColor: MaterialStateProperty.all(buttonColor)
                                      // ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Password
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
                                              builder: (context) =>
                                                  LoginPage()),
                                        );
                                      },
                                      child: Container(
                                        // margin: EdgeInsets.only(top: 20),
                                        width: gHeight,
                                        height: gHeight / 25,
                                        child: FittedBox(
                                          child: RichText(
                                              text: TextSpan(
                                                  text: "Joined Us Before?    ",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  children: const [
                                                TextSpan(
                                                  text: "Login",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ])),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
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

  void signUp(String email, String password) async {
    CircularProgressIndicator();
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email)})
          .catchError((e) {
        if (e.code == 'weak-password') {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.warning,
            text: 'Password should be more than 6 characters',
            title: 'Weak Password',
            autoCloseDuration: const Duration(seconds: 2),
          );
        } else if (e.code == 'email-already-in-use') {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.warning,
            text: 'Email already exist',
            title: 'please choose another email',
            autoCloseDuration: const Duration(seconds: 2),
          );
        }
      });
    }
  }

  postDetailsToFirestore(String email) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var user = _auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('SingUp');
    ref.doc(user!.uid).set({
      'email': emailController.text,
      'cnic': cnicController.text,
      'mobile': mobileController.text,
      'name': nameController.text,
      'fname': fnameController.text,
      'surname': surnameController.text,
      'gender': genderController.text,
      'rool': rool,
    });
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      text: 'Your registration is successfully complete',
      title: 'Press ok to login',
      // autoCloseDuration:
      //     const Duration(seconds: 2),
      onConfirmBtnTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );
  }
}

class MobileSingupPage extends StatelessWidget {
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
                                            text: 'Please Enter Email again',
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
                            height: gHeight / 12,
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
                                    height: 150,
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

// child: Scaffold(
//   body: Container(
//     margin: EdgeInsets.all(15),
//     width: gWidth,
//     height: gHeight,
//     child: Column(children: [
//       Container(
//           margin: EdgeInsets.only(top: 40),
//           width: gWidth,
//           height: gHeight / 3,
//           child: Image.asset("assets/images/logo.png")),
//       Container(
//         margin: EdgeInsets.only(top: 10, right: 240),
//         width: gWidth / 4,
//         height: gHeight / 18,
//         // color: Colors.red,
//         child: FittedBox(
//           child: Text("Login",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//         ),
//       ),
//       SizedBox(height: 20),
//       RepTextFormField(
//         validator: (value) {
//                                         if (value!.isEmpty) {
//                                           QuickAlert.show(
//                                             context: context,
//                                             type: QuickAlertType.warning,
//                                             text: 'Please Enter Email',
//                                             title: 'Fill All the Fields',
//                                             autoCloseDuration:
//                                                 const Duration(
//                                                     seconds: 2),
//                                           );
//                                           leadingImage:
//                                           'assets/success.gif';
//                                         }
//                                         return null;
//                                       },
//                                       // onSaved: (value) => _password = value,icon: Icons.email, suficon: null, text: "Email ID"),
//       SizedBox(height: 20),
//       RepTextFormField(
//         validator: (value) {
//                                         if (value!.isEmpty) {
//                                           QuickAlert.show(
//                                             context: context,
//                                             type: QuickAlertType.warning,
//                                             text: 'Please Enter Email',
//                                             title: 'Fill All the Fields',
//                                             autoCloseDuration:
//                                                 const Duration(
//                                                     seconds: 2),
//                                           );
//                                           leadingImage:
//                                           'assets/success.gif';
//                                         }
//                                         return null;
//                                       },
//                                       // onSaved: (value) => _password = value,
//           icon: LineIcons.alternateUnlock,
//           suficon: Icon(LineIcons.eyeSlash),
//           text: "Password"),
//       GestureDetector(
//         onTap: () {},
//         child: Container(
//           margin: EdgeInsets.only(top: 20, left: 230),
//           width: gWidth / 3.7,
//           height: gHeight / 32,
//           child: FittedBox(
//             child: Text(
//               "Forgot Password?",
//               style: TextStyle(
//                   color: Colors.black, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//       ),
//       SizedBox(height: 15),
//       Container(
//         margin: EdgeInsets.symmetric(horizontal: 5),
//         width: gHeight,
//         height: gHeight / 15,
//         child: ElevatedButton(
//           onPressed: () {},
//           child: Text("Login"),
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//             // backgroundColor: MaterialStateProperty.all(buttonColor)
//           ),
//         ),
//       ),
//       SizedBox(height: 15),
//       Container(
//         width: gWidth,
//         child: Center(
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(width: 130, height: 0.5, color: iconsColor),
//                 Text("  OR  ",
//                     style: TextStyle(color: iconsColor, fontSize: 20)),
//                 Container(width: 130, height: 0.5, color: iconsColor),
//               ]),
//         ),
//       ),

//       //
//       Container(
//         width: gWidth,
//         height: gHeight / 15,
//         child: ElevatedButton(
//             onPressed: () {},
//             child: Row(
//               children: [
//                 SizedBox(width: 30),
//                 SizedBox(
//                   height: 40,
//                   width: 40,
//                   child: Text("Login with Google"),
//                 ),
//               ],
//             )),
//       ),
//     ]),
//   ),
// ),
// );
// }
// }

// import 'package:flutter/material.dart';
// import '/AdmissionSystem/Login/login.dart';

// class SingupPage extends StatefulWidget {
//   @override
//   _SingupPageState createState() => _SingupPageState();
// }

// class _SingupPageState extends State<SingupPage> {
//   final _formKey = GlobalKey<FormState>();
//   var _name, _email, _password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Signup Form'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 prefixIcon: Icon(Icons.person),
//               ),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               },
//               onSaved: (value) => _name = value,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 prefixIcon: Icon(Icons.email),
//               ),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email';
//                 }
//                 return null;
//               },
//               onSaved: (value) => _email = value,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 prefixIcon: Icon(Icons.lock),
//               ),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 return null;
//               },
//               onSaved: (value) => _password = value,
//               obscureText: true,
//             ),
//             SizedBox(height: 10),
//             MaterialButton(
//               color: Theme.of(context).primaryColor,
//               textColor: Colors.white,
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   _formKey.currentState!.save();
//                   // Connect to database and create a new user
//                   print(_name);
//                   print(_email);
//                   print(_password);
//                 }
//               },
//               child: Text('Sign Up'),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('Or sign up with'),
//                 SizedBox(width: 10),
//                 TextButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.face),
//                   label: Text('Facebook'),
//                 ),
//                 SizedBox(width: 10),
//                 TextButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.lock_open),
//                   label: Text('Google'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             MaterialButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SingupPage()),
//                 );
//               },
//               child: const Text('Already have an account? Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
