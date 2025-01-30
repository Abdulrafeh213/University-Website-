import 'package:flutter/material.dart';

class PVCMessage extends StatelessWidget {
  const PVCMessage({super.key});

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
          height: 300,
          width: width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage(
                "assets/images/pvc.jpeg",
              ),
            ),
          )),
      const SizedBox(
        width: 20,
      ),
      Container(
        width: width * 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Professor Dr. Syed Maqsood Zia\nPro Vice Chancellor",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Color(0xFF012951),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "In the name of Allah, the most Beneficent; the most Merciful. I feel honoured to say that SALU Ghotki Campus is making a rapid progress in the areas of business, information technology and humanities. SALU Ghotki Campus is right on its track to a steady upward progress. It asserts to be the first ever HEC recognized university campus in Ghotki to offer professional education in several fields. SALU Ghotki Campus is very much conscious of our cultural and religious norms. It aims at educating and polishing its students in the best possible way keeping in view not only these cultural and religious principles but also the highly demanding educational requirements of the modern age. We, here at SALU Ghotki Campus, focus on promoting in our students the sense to live in society believing in principles of peace, coexistence and tolerance. Producing useful and constructive citizens for society along with giving prime importance to the individual career development of our students. Dear students, here at SALU Ghotki Campus, you will find a culture of inquiry, a culture of asking questions, a culture that opens minds of its students and builds confidence in them, a culture that is much different from the schools and colleges you previously attended, and a culture that will make you responsible and practical. We believe in professionalism. You will see the difference. SALU Ghotki Campus will enable you not only to ask questions but to explore their possible answers as well. SALU Ghotki Campus’ talented and experienced faculty will be your guides and allies on your journey of inquiry. My dear students, I would urge you to focus on education, not just on knowledge. I would urge you to work hard day in and day out to enable your country once again to stand proud in the company of nations. Hard work and broader and deeper education is the need of the hour. We look forward to you to accept this challenge. I want you to know that the entire University Campus community is here to support and encourage you during your study. We look forward to the fresh ideas and energy you bring to our campus. Learning, innovating and leading have always been the guiding principles for SALU Ghotki Campus.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF012951),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
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
            children: pageChildren(constraints.biggest.width / 2.05),
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

// import 'package:flutter/material.dart';

// class PVCMessage extends StatelessWidget {
//   List<Widget> pageChildren(double width) {
//     return <Widget>[
//       Container(
//         width: width,
//         // height: 180,
//         child: Column(
//           children: [
//             SizedBox(height: 30),
//             Text(
//               "Professor Dr. Syed Maqsood Zia\nPro Vice Chancellor\n",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 27.0,
//                   color: Colors.white,
//                   fontStyle: FontStyle.italic),
//             ),
//             Text(
//               "In the name of Allah, the most Beneficent; the most Merciful. I feel honoured to say that SALU Ghotki Campus is making a rapid progress in the areas of business, information technology and humanities. SALU Ghotki Campus is right on its track to a steady upward progress. It asserts to be the first ever HEC recognized university campus in Ghotki to offer professional education in several fields. SALU Ghotki Campus is very much conscious of our cultural and religious norms. It aims at educating and polishing its students in the best possible way keeping in view not only these cultural and religious principles but also the highly demanding educational requirements of the modern age. We, here at SALU Ghotki Campus, focus on promoting in our students the sense to live in society believing in principles of peace, coexistence and tolerance. Producing useful and constructive citizens for society along with giving prime importance to the individual career development of our students. Dear students, here at SALU Ghotki Campus, you will find a culture of inquiry, a culture of asking questions, a culture that opens minds of its students and builds confidence in them, a culture that is much different from the schools and colleges you previously attended, and a culture that will make you responsible and practical. We believe in professionalism. You will see the difference. SALU Ghotki Campus will enable you not only to ask questions but to explore their possible answers as well. SALU Ghotki Campus’ talented and experienced faculty will be your guides and allies on your journey of inquiry. My dear students, I would urge you to focus on education, not just on knowledge. I would urge you to work hard day in and day out to enable your country once again to stand proud in the company of nations. Hard work and broader and deeper education is the need of the hour. We look forward to you to accept this challenge. I want you to know that the entire University Campus community is here to support and encourage you during your study. We look forward to the fresh ideas and energy you bring to our campus. Learning, innovating and leading have always been the guiding principles for SALU Ghotki Campus.\n\n",
//               style: TextStyle(fontSize: 16.0, color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         width: 30.0,
//       ),
//       Image.asset(
//         "assets/images/pvc.jpeg",
//         width: 200,
//         // fit: BoxFit.fill,
//         height: 300,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth > 800) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: pageChildren(constraints.biggest.width / 2),
//           );
//         } else {
//           return Column(
//             children: pageChildren(constraints.biggest.width),
//           );
//         }
//       },
//     );
//   }
// }
