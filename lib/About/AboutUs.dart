import 'package:flutter/material.dart';
import '../ButtomBar/buttomBar.dart';
import '../Navigation/Navbar.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('ABOUT THE CAMPUS\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.0,
                                  color: Color(0xFF012951),
                                )),
                            Text(
                                'Shah Abdul Latif University Khairpur, visualizing the growing need of the people of upper Sindh for higher education, has recently established a Campus at Ghotki in order to provide higher education facilities in various modern and scientific fields. The Ghotki Campus is located adjacent to Government Degree College Ghotki.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),
                            Text(
                                '\nThe Chairman & the Management of Higher Education Commission, Islamabad approved the establishment of the campus of Shah Abdul Latif University at Ghotki which was inaugurated on December 19, 2016, by Honourable Vice-Chancellor, Prof Dr. Parveen Shah and Sardar Ali Muhammad Khan Mahar, Member National Assembly and Former Chief Minister of Sindh.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/aboutus.jpg',
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Aims And Objectives\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.0,
                                  color: Color(0xFF012951),
                                )),
                            Text(
                                'In this modern era of science & technology and Hi-Tech business environment, the Campus provides the opportunity for acquiring quality education and develops among the learner’s competitive edge, gaining new knowledge and insights into the fundamentals of Arts and Languages, Management Sciences, and Physical Science.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),

                            //

                            Text('\n\nAcademic Support Services\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.0,
                                  color: Color(0xFF012951),
                                )),
                            Text(
                                'Educational Counseling & Guidance Center The students are provided with guidance and career counseling services to match the market needs effectively and efficiently.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),

                            //

                            Text('\n\nLibrary\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.0,
                                  color: Color(0xFF012951),
                                )),
                            Text(
                                'The Library of the Campus is enriched with over 1700 Books of various disciplines to facilitate the students in building their successful careers in offered courses.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),

                            //

                            Text('\n\nSport Facilities\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.0,
                                  color: Color(0xFF012951),
                                )),
                            Text(
                                'The facilities are adequately available at the Campus for Various Games such as Cricket, Foot Ball, Hockey, Volley Ball, Badminton, Sports activities are organized every year to make the students healthy and physically fit.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),

                            //

                            Text('\n\nDrama & Arts Performance\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.0,
                                  color: Color(0xFF012951),
                                )),
                            Text(
                                'Different Programs of Drama and Arts performance are staged at Ghotki Campus to encourage students & boost their confidence. Performances of the students during different Plays',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF012951),
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/drama.jpg',
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF093055),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ButtomBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
