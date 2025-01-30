import 'package:flutter/material.dart';
import '../ButtomBar/buttomBar.dart';
import '../Navigation/Navbar.dart';
import 'AdmissionBar.dart';

class Admissions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xCC0a2e54),
          ),
          child: Column(
            children: <Widget>[
              Navbar(),
              AdmissionBar(),
            ],
          ),
        ),
        titleSpacing: 0.0,
        toolbarHeight: 150,
        toolbarOpacity: 0.8,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '\n ADMISSION GUIDANCE\n\nEligibility Criteria for Admission\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xFF012951))),
                          Text(
                              '1.  Every candidate desirous of taking admission to the Graduate (BS Four-Year Program) shall fill in the admission form obtainable from any of the approved branches of Habib Bank Limited, on payment of its price as fixed from time-to-time. The admission form, duly filled-in by the candidates & supported by all the required documents shall be submitted at the approved branches of Habib Bank Limited. \n2.  Every candidate shall supply three copies of his/her recent photograph (two passport size and one (1`x 1. ½”), duly attested, along with the admission form. \n3.  Anyone who has passed the H.S.C Part- II Intermediate Examination or any other examination recognized by the University as equivalent to the H.S.C Part- II Intermediate Examination Annual/Supplementary 2015 to 2018 and Annual 2019 is eligible to seek admission to the relevant (Graduate) (4 Year Program) course provided that he/she fulfills the requirements of minimum percentage of 50% marks for Arts /Commerce Students and other conditions of admission as may be prescribed from time-to-time. \n4.  A candidate who has already completed Bachelor`s pass Degree is NOT eligible for admission to BS course in any discipline. \n5.  A candidate having completed their regular scheme of study in BS/M.A/M.Com/MPA/MBA or any other 16 Year regular programs shall NOT be eligible for admission in 16 years program. \n6.  The foreigners may be considered for admission only when nominated/recommended by the Ministry of Education, Ministry of Finance & Economic Affairs Division Government of Pakistan. \n7.  The candidate shall have to produce the following documents in original along with their attested Photostat copies: \n*  Pass Certificate of the last Qualifying Examination; \n*  Transfer Certificate from Principal of the College/Institute last attended.\n*  Character Certificate from Principal of the College/Institute last attended. \n8.  A candidate who has passed examination from other than the Board of Intermediate & Secondary Education, Sukkur & Larkana shall NOT be admitted to any class unless he/she obtains a certificate of eligibility from Shah Abdul Latif University, However, the Registrar may issue a provisional admission certificate if he is satisfied that the applicant is prima facie eligible for admission in the University on the condition that he/she obtains a final certificate of eligibility before such date as may be fixed by the Vice Chancellor. \n9.  Vice Chancellor may refuse admission to any candidate without mentioning any reason. \n10.  All the admissions shall be provisional until approved by the Vice Chancellor. \n11.  A student of the University admitted to any discipline as a regular student shall NOT appear in any examination as an external candidate during his/her University studentship. \n12.  No change of department shall be allowed once the admission is taken. \n13.  A student shall do all the necessary written work, tutorial and seminars as directed by his/her teachers to his /her /their satisfaction. \n14.  A student shall do nothing, either in or outside the University that may interfere with the orderly administration and discipline or may bring the University and its administration into disrepute. \n15.  The admission of student shall stand cancelled automatically if he/she occupies the University hostel or any other part forcibly. \n16.  The University authorities shall not be responsible for transport arrangements of the students. \n17.  The regular student is required to maintain at least 75% of attendance as eligibility to appear in the examination. \n18.  No student shall be re-admitted without the prior permission of the Vice Chancellor, in case his/her admission is cancelled due to any reason.\n19.  No ex-student shall be given access to the facilities of using the library, laboratories, seminars, etc. without the prior permission of the authority. \n20.  Each student admitted to a four-year program or post-graduate class shall obtain identity card on the prescribed form on payment of the prescribed fee. \n21.  If identity card is lost or destroyed, a duplicate must be obtained immediately at the payment of Rs.200/= \n22.  Refund of fees (as per HEC criteria is given below):',
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Table(
                        border: TableBorder.all(
                          width: 1.0,
                          color: Color(0xFF012951),
                        ),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Percentage of Tuition Fee",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Timeline for Semester/ Trimester  System",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Timeline for Annual System",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Full Fee Refund (100%)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Up to 7th day of convene of classes",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Up to 15th day of convene of classes",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Half Fee Refund (50%)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Up to 8th-15th  day of convene of classes",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Up to 16th-30th  day of convene of classes",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "No Fee Refund (0%)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Up to 16th day of convene of classes",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Up to 31st  day of convene of classes",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Eligibility for admission in BSCS/BS English/BBA Programs offered in the various departments, for the candidates who have passed H.S.C-II in the different groups.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xFF012951),
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                            ),
                          ]),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Table(
                          columnWidths: {
                            // 0: FlexColumnWidth(0.5),
                            // 1: FlexColumnWidth(4),
                            // 2: FlexColumnWidth(2),
                            // 3: FlexColumnWidth(2),
                            // 4: FlexColumnWidth(2),
                            // 5: FlexColumnWidth(2),
                            // 6: FlexColumnWidth(2),
                          },
                          border: TableBorder.all(
                            width: 1.0,
                            color: Color(0xFF012951),
                          ),
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "S.No",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Department/Institute",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Pre-Medical",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Pre-Engineering",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Commerce",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Arts",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "DAE",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "1",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Business Administration",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "2",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Computer Science",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Not-Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Not-Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "3",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "English",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Eligible",
                                  textScaleFactor: 1.3,
                                  style: TextStyle(
                                      color: Color(0xFF012951),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),

// Procedure to Apply for Admission
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Procedure to Apply For Admission \n1.  Application for admission shall be submitted by the eligible candidate, on the prescribed application form with required undertakings. \n2.  In case of foreign candidates, the recommendation and undertaking on the prescribed performa for the admission and the guarantee for the payment of fees and good behavior should come from the concerned Embassy/High Commission/Consulate General. \n3.  The duly filled-in application forms in all respects will be received by the designated branches of Habib Bank Limited. \n4.  Every student is required to submit an undertaking on non-judicial stamp paper of Rs.10/= duly attested by a Deputy District Officer (Revenue) along with admission form. \n\n Allocation of Seats',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xFF012951),
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Table(
                        columnWidths: {
                          // 0: FlexColumnWidth(1),
                          // 1: FlexColumnWidth(6),
                          // 2: FlexColumnWidth(3),
                          // 3: FlexColumnWidth(3),
                          // 4: FlexColumnWidth(3),
                        },
                        border: TableBorder.all(
                          width: 1.0,
                          color: Color(0xFF012951),
                        ),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "S.No",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Department",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Program",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Merit",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Self-Finance",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "1",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Business Administration",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "BBA (4-Year)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "50",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "10",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Computer Science",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "BS(CS) (4-Year)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "50",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "10",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "English",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "BS (4-Year)",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "50",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "10",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    //fees
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Table(
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Fee Structure Academic Year 2020",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Table(
                            columnWidths: {
                              0: FlexColumnWidth(5.8),
                              1: FlexColumnWidth(2.6),
                              2: FlexColumnWidth(3.2),
                            },
                            border: TableBorder.all(
                                width: 1.0, color: Color(0xFF012951)),
                            children: const [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Business Administration",
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Computer Science",
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "English",
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Table(
                            columnWidths: {
                              0: FlexColumnWidth(0.5),
                              1: FlexColumnWidth(3),
                              2: FlexColumnWidth(1),
                              3: FlexColumnWidth(1),
                              4: FlexColumnWidth(1),
                              5: FlexColumnWidth(1),
                              6: FlexColumnWidth(1.5),
                              7: FlexColumnWidth(1.5),
                              8: FlexColumnWidth(1),
                              9: FlexColumnWidth(1),
                              10: FlexColumnWidth(1),
                              11: FlexColumnWidth(1),
                            },
                            border: TableBorder.all(
                                width: 1.0, color: Color(0xFF012951)),
                            children: const [
                              //description
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "S.No",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Particular",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BBA Part-I (Merit)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BBA         Part-I               (Self-Finance)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BBA Part-II,III &IV (Merit)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " BBA Part-II,III & IV (Self-Finance)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BS(CS)          Part-I,II,III &IV      (Merit)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BS(CS/IT)                Part-I,II,III &IV                (Self-Finance",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "  BS Part-I (Merit)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " BS Part-I                 (Self-Finance)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " BS Part-II,III &IV (Merit)	",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " BS Part-II,III & IV (Self-Finance)",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                              //data
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "1",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Admission Fee",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Tuition Fee",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "University Development Fund",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "4",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Examination & Form Fee",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Sports Fee",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "6",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Library Fee",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "7",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Identity Card",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Total",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "9900",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "17500",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: Color(0xFF012951),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Grading
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 4,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Grading',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    height: 2,
                                  ),
                                ),
                                Text(
                                  'GRADE POINT (GP)',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold,
                                    height: 2,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(4),
                          1: FlexColumnWidth(4),
                          2: FlexColumnWidth(4),
                        },
                        border: TableBorder.all(
                            width: 1.0, color: Color(0xFF012951)),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Grade C Marks Range 60 to 71:",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Grade B Marks Range 72 to 86:",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Grade A Marks Range 87 to 100:",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(2),
                          3: FlexColumnWidth(2),
                          4: FlexColumnWidth(2),
                          5: FlexColumnWidth(2),
                        },
                        border: TableBorder.all(
                            width: 1.0, color: Color(0xFF012951)),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Marks in %",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Grade G.P Point",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Marks in %",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Grade G.P Point",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Marks in %",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Grade G.P Point",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(2),
                          3: FlexColumnWidth(2),
                          4: FlexColumnWidth(2),
                          5: FlexColumnWidth(2),
                        },
                        border: TableBorder.all(
                            width: 1.0, color: Color(0xFF012951)),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "60.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "72.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "87 to 100",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "4.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "61.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.12",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "73.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.1",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "63.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.25",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "75.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.2",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "64.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.37",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "76.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.3",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "66.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.250",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "78.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.4",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "67.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.62",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "79.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "69.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.75",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "81.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.6",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "70.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2.87",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "82.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.7",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "84.0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.8",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "85.5",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "3.9",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Color(0xFF012951),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '\n Promotion of student (s) in next Semester: \n1.  A student is required to maintain a minimum G.P.A. of 1.33 in each semester for probation & promotion in the next higher semester courses. A student, who is fail in three courses, but not in four courses, shall also be promoted to next semester provided he/she shall have to obtain GPA 1.33. \n2.  A student failing to maintain GPA of 2.0 or fail in any course but maintaining GPA 2.0, shall be placed on probation and he/she shall be promoted to next semester provided his/her GPA is not less than 1.33. \n3.  A student placed on probation shall repeat all the courses in which he/she is fail and or such other courses as recommended by the Department as soon as the course(s) are offered in next semester. \n4.  A student who is fail in four courses in any semester or could not maintain G.P.A 1.33 in a semester or could not maintain continuity in appearing in the Examinations but avails semester break he/she shall be dropped from the rolls of the Shahdadko Campus \n5.  Restoration of admission:  A student achieving less than GPA 1.33 and declared drop in any semester may be provided one chance to repeat the same semester in order to improve GPA up to or more than 1.33, till that he/she will not be promoted in the next semester for which he/she has to submit a fresh application for restoration of admission and to pay full fees of the academic year. \nImprovement of Grade C: \nA student who has obtained Degree in Grade C or a student shall be allowed to improve his/her grade C in the course(s) in any semester. \nThe marks distribution for probationer/ failure/ improver student is as under: \nSemester Final Test                     80 Marks \nPresentation/Viva -Voce            20 Marks \nInternship:\nThe Internship shall be of 6 weeks in public/ private organizations. All the students of Departments of Business Administration, Commerce and Computer Science shall have to submit Internship Certificate from the Organization and comprehensive research report. \nComprehensive Viva-Voce Examination:\nThere shall be a Comprehensive Viva-Voce Examination in the last semester of the program. A three-member Examination Committee consisting of senior most teachers of the Department shall conduct the Viva comprehensive examination. The grading shall be Pass or Fail.\n',
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

                    //attendance

                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Attendance Requirement',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Color(0xFF012951),
                                fontWeight: FontWeight.bold,
                                height: 2,
                              )),
                          Text(
                              'The class attendance requirement, for each student shall be 75% in each course to become eligible for appearing in the mid-Semester and final tests.\n\n',
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

                    //Code of Honor

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('\nUndergraduate Academic Code of Honor\n',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Color(0xFF012951),
                                height: 2,
                              )),
                          Text(
                              'Every student of Ghotki Campus, Shah Abdul Latif University is an honorable student and must observe the following code of honor: \n1.  To maintain the good image of the University, you are reminded to be appropriately attired in a manner befitting the status of university students as well as the occasion.\n2.  He must be faithful in his duties and respect the conviction of others in matters of religion and custom.\n3.  He must be truthful and honest in his dealings with all people.\n4.  He must respect the elders and be polite to all, especially women, children, old people, the weak and the helpless. \n5.  He must respect his teachers and others in authority in the University.\n6.  He must help his fellow beings especially those in distress.\n7.  He must devote himself faithfully to the studies.\n8.  He must protect his and others property and the property of the University.\n9.  Each student shall honestly declare the work that he has done and what he has not done. \n10.  He must refrain from doing anything which might lower the honor and prestige of the country\n\n',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                height: 2,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF012951),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: ButtomBar(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
