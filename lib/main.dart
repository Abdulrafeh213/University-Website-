import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:project/About/AboutUs.dart';
import 'package:project/AdmissionSystem/Login/login.dart';
import 'package:project/AdmissionSystem/Singup/singup.dart';
import 'package:project/Admissions/Admissions.dart';
import 'package:project/ContactUs/ContactUs.dart';
import 'package:project/Download.dart';

import 'Home/MyHomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "",
            authDomain: "semesterfinalproject-d8e0e.firebaseapp.com",
            projectId: "semesterfinalproject-d8e0e",
            storageBucket: "semesterfinalproject-d8e0e.appspot.com",
            messagingSenderId: "407311858513",
            appId: "1:407311858513:web:53cda03a01828076c3f170"));
  } else {
    Firebase.initializeApp();
  }

  // This is the last thing you need to add.
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //   builder: (context, child) => MyHomePage(),
      //   onGenerateRoute: (settings) =>  'SOMENAME',
      title: 'Flutter Project',
      debugShowCheckedModeBanner: false,
      initialRoute: 'MyHomePage',
      routes: {
        'MyHomePage': (context) => MyHomePage(),
        'download': (context) => Download(),
        'admission': (context) => Admissions(),
        'aboutUs': (context) => AboutUs(),
        'contactUs': (context) => ContactUs(),
        'login': (context) => LoginPage(),
        'Singup': (context) => SingupPage(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Poppins' 'OpenSans'),
      // darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}
