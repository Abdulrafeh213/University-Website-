import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project/AdmissionSystem/LMS/LMS.dart';
import 'package:project/AdmissionSystem/Singup/roundButton.dart';
import 'package:project/AdmissionSystem/utils/constanst.dart';
import '../Navbar.dart';
import 'package:quickalert/quickalert.dart';
import '../AdminPanel/adminPanel.dart';
import '../Singup/singup.dart';
import '../StudentPanel/studentPanel.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLoginPage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopLoginPage();
        } else {
          return MobileLoginPage();
        }
      },
    );
  }
}

class DesktopLoginPage extends StatefulWidget {
  @override
  State<DesktopLoginPage> createState() => _DesktopLoginPageState();
}

class _DesktopLoginPageState extends State<DesktopLoginPage> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isObscure3 = true;
  bool visible = false;

  void cleartext() {
    emailController.clear();
    passController.clear();
  }

  // void login() {
  //   setState(() {
  //     loading = true;
  //   });
  //   _auth
  //       .signInWithEmailAndPassword(
  //           email: emailController.text,
  //           password: passController.text.toString())
  //       .then((value) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => StudentPanel()),
  //     );
  //     setState(() {
  //       loading = false;
  //     });
  //   }).onError((error, stackTrace) {
  //     QuickAlert.show(
  //       context: context,
  //       type: QuickAlertType.error,
  //       text: 'credition not match',
  //       title: error.toString(),
  //       // autoCloseDuration:
  //       //     const Duration(seconds: 2),
  //     );
  //     setState(() {
  //       loading = false;
  //     });
  //   });
  // }

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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Color.fromARGB(228, 247, 247, 247),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        FadeInDown(
                          child: Container(
                              margin: EdgeInsets.only(top: 170),
                              width: gWidth / 2.5,
                              height: gHeight / 2.5,
                              child: Image.asset("assets/images/logo.png")),
                        ),
                      ]),
                      Column(children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 1.1,
                          decoration: BoxDecoration(
                              color: Color(0xFF012951),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FadeInLeft(
                                delay: Duration(milliseconds: 600),
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, right: 350),
                                  width: gWidth / 4,
                                  height: gHeight / 18,
                                  child: FittedBox(
                                    child: Text("Login",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            //EmailField
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: FadeIn(
                                delay: Duration(milliseconds: 1000),
                                child: Container(
                                  width: double.infinity,
                                  height: gHeight / 9,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          width: gWidth / 2.4,
                                          child: TextFormField(
                                            controller: emailController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                QuickAlert.show(
                                                  context: context,
                                                  type: QuickAlertType.warning,
                                                  text: 'Please Enter Email',
                                                  title: 'Fill All the Fields',
                                                  autoCloseDuration:
                                                      const Duration(
                                                          seconds: 2),
                                                );
                                              }
                                              return null;
                                            },
                                            onSaved: (value) {
                                              emailController.text = value!;
                                            },
                                            textInputAction:
                                                TextInputAction.next,
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
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            //PasswordField
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: FadeInDown(
                                delay: Duration(milliseconds: 1400),
                                child: Container(
                                  width: double.infinity,
                                  height: gHeight / 9,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          width: gWidth / 2.4,
                                          child: TextFormField(
                                            controller: passController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                QuickAlert.show(
                                                  context: context,
                                                  type: QuickAlertType.error,
                                                  text: 'Please Enter Password',
                                                  title: 'Fill All the Fields',
                                                  autoCloseDuration:
                                                      const Duration(
                                                          seconds: 2),
                                                );
                                              }
                                              return null;
                                            },
                                            onSaved: (value) {
                                              passController.text = value!;
                                            },
                                            textInputAction:
                                                TextInputAction.next,
                                            obscureText: _isObscure3,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                            decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                    icon: Icon(
                                                      _isObscure3
                                                          ? Icons.visibility
                                                          : Icons
                                                              .visibility_off,
                                                      color: Colors.white,
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        _isObscure3 =
                                                            !_isObscure3;
                                                      });
                                                    }),
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
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            //Forgot Password
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: FadeInDown(
                                delay: Duration(milliseconds: 1800),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20, left: 390),
                                    width: gWidth / 3.7,
                                    height: gHeight / 32,
                                    child: FittedBox(
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            //LoginButton
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: FadeInDown(
                                delay: Duration(milliseconds: 2300),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  width: gHeight,
                                  height: gHeight / 15,
                                  // child: RoundButton(
                                  //   onPressed: () {
                                  //     if (_formKey.currentState!.validate()) {
                                  //       Navigator.push(
                                  //         context,
                                  //         MaterialPageRoute(
                                  //             builder: (context) =>
                                  //                 StudentPanel()),
                                  //       );
                                  //       _formKey.currentState!.save();
                                  //       // Connect to database and create a new user
                                  //       // print(_name);
                                  //       // print(_email);
                                  //       // print(_password);
                                  //     } else {
                                  //       QuickAlert.show(
                                  //         context: context,
                                  //         type: QuickAlertType.error,
                                  //         text: 'Creditions Not Match',
                                  //         title: 'Login Failed',
                                  //       );
                                  //     }
                                  //   },
                                  //   child: Text("Login"),
                                  //   style: ButtonStyle(
                                  //     shape: MaterialStateProperty.all(
                                  //       RoundedRectangleBorder(
                                  //         borderRadius:
                                  //             BorderRadius.circular(15),
                                  //       ),
                                  //     ),
                                  //     // backgroundColor: MaterialStateProperty.all(buttonColor)
                                  //   ), onTap: () {  },
                                  // ),

                                  child: RoundButton(
                                      title: 'Singup',
                                      loading: loading,
                                      onTap: () {
                                        setState(() {
                                          visible = true;
                                        });
                                        signIn(emailController.text,
                                            passController.text);
                                        // // if (_formKey.currentState!.validate()) {
                                        // //   login();
                                        // // }
                                        // try {
                                        //   final credential =
                                        //       await FirebaseAuth.instance
                                        //           .signInWithEmailAndPassword(
                                        //     email:
                                        //         emailController.text.toString(),
                                        //     password:
                                        //         passController.text.toString(),
                                        //   )
                                        //           .then((value) {
                                        //     if (emailController ==
                                        //         'admin@gmail.com') {
                                        //       cleartext();
                                        //       Navigator.push(
                                        //         context,
                                        //         MaterialPageRoute(
                                        //             builder: (context) =>
                                        //                 LMS()),
                                        //       );
                                        //     } else {
                                        //       cleartext();
                                        //       Navigator.push(
                                        //         context,
                                        //         MaterialPageRoute(
                                        //             builder: (context) =>
                                        //                 StudentPanel()),
                                        //       );
                                        //     }
                                        //     setState(() {
                                        //       loading = false;
                                        //     });
                                        //   });
                                        // } on FirebaseAuthException catch (e) {
                                        //   if (e.code == 'user-not-found') {
                                        //     QuickAlert.show(
                                        //       context: context,
                                        //       type: QuickAlertType.warning,
                                        //       text:
                                        //           'Email / Password not match',
                                        //       title: 'Creditions not match',
                                        //     );
                                        //   } else if (e.code ==
                                        //       'wrong-password') {
                                        //     QuickAlert.show(
                                        //       context: context,
                                        //       type: QuickAlertType.warning,
                                        //       text:
                                        //           'Email / Password not match',
                                        //       title: 'Creditions not match',
                                        //     );
                                        //   }
                                        // }
                                      }),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            //Or
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: FadeInDown(
                                delay: Duration(milliseconds: 2900),
                                child: Container(
                                  width: gWidth,
                                  child: Center(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 280,
                                              height: 1,
                                              color: Colors.white),
                                          Text("  OR  ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20)),
                                          Container(
                                              width: 280,
                                              height: 1,
                                              color: Colors.white),
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            //google button
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: FadeInDown(
                                delay: Duration(milliseconds: 3300),
                                child: Container(
                                  width: gWidth,
                                  height: gHeight / 15,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Or log in with',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      SizedBox(width: 10),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: Icon(Icons.facebook,
                                            color: Colors.white, size: 30),
                                        label: Text(
                                          'Facebook',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: Icon(LineIcons.googlePlus,
                                            color: Colors.white, size: 30),
                                        label: Text(
                                          'Google',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //register
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: FadeInDown(
                                  delay: Duration(milliseconds: 3800),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SingupPage()),
                                      );
                                    },
                                    child: Container(
                                      // margin: EdgeInsets.only(top: 20),
                                      width: gHeight,
                                      height: gHeight / 25,
                                      child: FittedBox(
                                        child: RichText(
                                            text: TextSpan(
                                                text: "New User?    ",
                                                style: TextStyle(
                                                    color: Colors.white),
                                                children: [
                                              TextSpan(
                                                text: "Reigster",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ])),
                                      ),
                                    ),
                                  ),
                                ))
                          ]),
                        )
                      ]),
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

  void route() {
    User? user = FirebaseAuth.instance.currentUser;
    var SingUp = FirebaseFirestore.instance
        .collection('SingUp')
        .doc(user!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('rool') == "admin") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LMS(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => StudentPanel(),
            ),
          );
        }
      } else {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          text: 'Record not exist',
          title: 'Failed to Login',
          autoCloseDuration: const Duration(seconds: 2),
        );
      }
    });
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        route();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: 'Email / Password Wrong',
            title: 'Creditions Not Matehced',
            autoCloseDuration: const Duration(seconds: 1),
          );
        } else if (e.code == 'wrong-password') {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: 'Email / Password Wrong',
            title: 'Creditions Not Matehced',
            autoCloseDuration: const Duration(seconds: 1),
          );
        }
      }
    }
  }
}

class MobileLoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(5),
              width: gWidth,
              height: gHeight,
              child: Column(children: [
                FadeInDown(
                  child: Container(
                      margin: EdgeInsets.only(top: 40),
                      width: gWidth / 1.5,
                      height: gHeight / 3.5,
                      child: Image.asset("assets/images/logo.png")),
                ),
                FadeInLeft(
                  delay: Duration(milliseconds: 600),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, right: 240),
                    width: gWidth / 4,
                    height: gHeight / 18,
                    // color: Colors.red,
                    child: FittedBox(
                      child: Text("Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FadeIn(
                  delay: Duration(milliseconds: 1000),
                  child: Container(
                    width: double.infinity,
                    height: gHeight / 15,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            color: Color(0xFF0a2e54),
                            size: 40,
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            height: 130,
                            width: gWidth / 1.3,
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
                                  color: Color(0xFF0a2e54), fontSize: 20),
                              decoration: InputDecoration(
                                  suffix: null,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF0a2e54)),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xCC0a2e54), width: 2),
                                  ),
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      color: Color(0xFF0a2e54),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 20),
                FadeInDown(
                  delay: Duration(milliseconds: 1400),
                  child: Container(
                    width: double.infinity,
                    height: gHeight / 15,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            LineIcons.alternateUnlock,
                            color: Color(0xFF0a2e54),
                            size: 40,
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            height: 50,
                            width: gWidth / 1.3,
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
                                  color: Color(0xFF0a2e54), fontSize: 20),
                              decoration: InputDecoration(
                                  suffix: Icon(
                                    LineIcons.eyeSlash,
                                    color: Color(0xFF0a2e54),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF0a2e54)),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xCC0a2e54), width: 2),
                                  ),
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      color: Color(0xFF0a2e54),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ]),
                  ),
                ),
                FadeInDown(
                  delay: Duration(milliseconds: 1800),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 230),
                      width: gWidth / 3.5,
                      height: gHeight / 31,
                      child: FittedBox(
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                FadeInDown(
                  delay: Duration(milliseconds: 2300),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: gHeight,
                    height: gHeight / 15,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminPanel()),
                          );
                          _formKey.currentState!.save();
                          // Connect to database and create a new user
                          // print(_name);
                          // print(_email);
                          // print(_password);
                        } else {
                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.error,
                            text: 'Creditions Not Match',
                            title: 'Login Failed',
                          );
                        }
                      },
                      child: Text("Login"),
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
                SizedBox(height: 15),
                FadeInDown(
                  delay: Duration(milliseconds: 2900),
                  child: Container(
                    width: gWidth,
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 130, height: 0.5, color: iconsColor),
                            Text("  OR  ",
                                style:
                                    TextStyle(color: iconsColor, fontSize: 20)),
                            Container(
                                width: 130, height: 0.5, color: iconsColor),
                          ]),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                FadeInDown(
                  delay: Duration(milliseconds: 3300),
                  child: Container(
                    width: gWidth,
                    height: gHeight / 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'login with',
                          style:
                              TextStyle(color: Color(0xFF0a2e54), fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.facebook,
                              color: Color(0xFF0a2e54), size: 30),
                          label: Text(
                            'Facebook',
                            style: TextStyle(
                                color: Color(0xFF0a2e54), fontSize: 16),
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(LineIcons.googlePlus,
                              color: Color(0xFF0a2e54), size: 30),
                          label: Text(
                            'Google',
                            style: TextStyle(
                                color: Color(0xFF0a2e54), fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                FadeInDown(
                  delay: Duration(milliseconds: 3800),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingupPage()),
                      );
                    },
                    child: Container(
                      // margin: EdgeInsets.only(top: 20),
                      width: gHeight,
                      height: gHeight / 25,
                      child: FittedBox(
                        child: RichText(
                            text: TextSpan(
                                text: "New User?    ",
                                style: TextStyle(color: Color(0xFF0a2e54)),
                                children: [
                              TextSpan(
                                text: "Reigster",
                                style: TextStyle(
                                    color: Color(0xFF0a2e54),
                                    fontWeight: FontWeight.bold),
                              )
                            ])),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
