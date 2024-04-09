import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';
// The screen which displays information about a club
// Only contact details and minor data available right now

class ClubScreen extends StatelessWidget {
  static String id = "ClubScreen";

  // const ClubScreen({super.key});
  // Take important information from previous screen
  ClubScreen({

    required this.clubName,
    required this.clubImage,
    required this.clubHead,
    required this.clubEmail,
    this.headContactNum,
    required this.clubInfo,
  });

  final String clubName;
  final String clubImage;
  final String clubHead;
  late final String? headContactNum;
  final String clubEmail;
  final String clubInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(clubName),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.all(2), child: Image.asset(clubImage)),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About the club",
                    style: GoogleFonts.kanit(fontSize: 25),),
                  Text(clubInfo,
                    style: GoogleFonts.quicksand(fontSize: 16),),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: kPaleOrangeColor,
              ),

              padding: EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Club head",
                    style: GoogleFonts.kanit(fontSize: 20),
                  ),
                  Text(
                    "$clubHead",
                    style: GoogleFonts.quicksand(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: kGrey,
              ),
              padding: EdgeInsets.all(18),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Club Email",
                    style: GoogleFonts.kanit(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "$clubEmail",
                    style: GoogleFonts.quicksand(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Head contact Number",
                    style: GoogleFonts.kanit(fontSize: 20, color: Colors.white),
                  ),
                  headContactNum == null
                      ? Text(
                          "No contact number available",
                          style: GoogleFonts.quicksand(fontSize: 16, color: Colors.white),
                        )
                      : Text(
                          "$headContactNum",
                          style: GoogleFonts.quicksand(fontSize: 16, color: Colors.white),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Discussion Forum",
                  style: GoogleFonts.kanit(fontSize: 25),),
                  Text("Hi there!",
                    style: GoogleFonts.quicksand(fontSize: 16),),
                  Text("Hello world",
                    style: GoogleFonts.quicksand(fontSize: 16),),
                  Text("Hi",
                    style: GoogleFonts.quicksand(fontSize: 16),),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kPaleOrangeColor,
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 14),
                  textStyle: GoogleFonts.bebasNeue(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen(
                      clubName: clubName,
                    ),
                  ),
                );
              },
              child: const Text(
                "Join Club",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
