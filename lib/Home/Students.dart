import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  const Students({super.key});

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 270,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                "3",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0),
              ),
              Text(
                "Departments",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
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
        height: 270,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                "1000",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0),
              ),
              Text(
                "Enrolled Students",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              Text(
                "From BS to Masters",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
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
        height: 270,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                "30",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0),
              ),
              Text(
                "Teachers",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 3.3),
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
