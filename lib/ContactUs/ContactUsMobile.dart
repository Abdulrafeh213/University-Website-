import 'package:flutter/material.dart';

class ContactUsMobile extends StatefulWidget {
  const ContactUsMobile({super.key});

  @override
  State<ContactUsMobile> createState() => _ContactUsMobileState();
}

class _ContactUsMobileState extends State<ContactUsMobile> {
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
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF012951),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Address',
                    style: TextStyle(
                        color: Color(0xFF012951),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                'Salu GC Beside Degree College Main G.T Road Ghotki',
                style: TextStyle(
                    color: Color(0xFF012951),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
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
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Color(0xFF012951),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'E-MAIL',
                    style: TextStyle(
                        color: Color(0xFF012951),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                'ghotkicampus@salu.edu.pk',
                style: TextStyle(
                    color: Color(0xFF012951),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
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
            color: Color.fromARGB(228, 247, 247, 247)),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.contact_phone,
                    color: Color(0xFF012951),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Phone',
                    style: TextStyle(
                        color: Color(0xFF012951),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                '0723-681323',
                style: TextStyle(
                    color: Color(0xFF012951),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
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
          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: pageChildren(constraints.biggest.width / 3.3));
        } else {
          return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: pageChildren(constraints.biggest.width));
        }
      },
    );
  }
}
