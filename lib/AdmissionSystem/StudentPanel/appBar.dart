import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../Login/login.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

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
    );
  }
}



// showGeneralDialog(
              //     context: context,
              //     // barrierColor: Colors.black54,
              //     barrierDismissible: true,
              //     barrierLabel: 'Label',
              //     pageBuilder: (_, __, ___) {
              //       return Align(
              //         alignment: Alignment.topRight,
              //         child: Padding(
              //           padding: const EdgeInsets.all(15.0),
              //           child: Container(
              //             width: MediaQuery.of(context).size.width / 4,
              //             height: 400,
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(20)),
              //             child: Column(children: [
              //               const Padding(
              //                 padding: EdgeInsets.symmetric(
              //                     vertical: 10, horizontal: 20),
              //                 child: CircleAvatar(
              //                     backgroundImage: AssetImage(
              //                         "assets/images/avatar.jpg"),
              //                     radius: 100),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.only(
              //                     top: 20, left: 10, right: 10),
              //                 child: Container(
              //                   height: 50,
              //                   color: const Color(0xFF0a2e54),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       const SizedBox(width: 30),
              //                       const Icon(
              //                         Icons.account_circle,
              //                         color: Colors.white,
              //                         size: 30,
              //                       ),
              //                       const Text(
              //                         'View Profile',
              //                         style: TextStyle(
              //                           color: Colors.white,
              //                           fontSize: 20,
              //                           decoration: TextDecoration.none,
              //                         ),
              //                       ),
              //                       const SizedBox(width: 20),
              //                       GestureDetector(
              //                         onTap: () {},
              //                         child: const Icon(
              //                             Icons.arrow_forward_ios,
              //                             color: Colors.white,
              //                             size: 30),
              //                       ),
              //                       const SizedBox(width: 30),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(
              //                     vertical: 10, horizontal: 10),
              //                 child: Container(
              //                   height: 50,
              //                   color: const Color(0xFF0a2e54),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       const SizedBox(width: 30),
              //                       const Icon(
              //                         Icons.exit_to_app,
              //                         color: Colors.white,
              //                         size: 30,
              //                       ),
              //                       const Text(
              //                         'Logout',
              //                         style: TextStyle(
              //                           color: Colors.white,
              //                           fontSize: 20,
              //                           decoration: TextDecoration.none,
              //                         ),
              //                       ),
              //                       const SizedBox(width: 20),
              //                       MaterialButton(
              //                         hoverColor: Colors.blue,
              //                         onPressed: () {
              //                           Navigator.push(
              //                             context,
              //                             MaterialPageRoute(
              //                               builder: (context) =>
              //                                   LoginPage(),
              //                             ),
              //                           );
              //                         },
              //                         child: const Icon(
              //                             Icons.arrow_forward_ios,
              //                             color: Colors.white,
              //                             size: 30),
              //                       ),
              //                       const SizedBox(width: 30),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ]),
              //           ),
              //         ),
              //       );
              //     });
