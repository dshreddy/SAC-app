import '../exports.dart';

// This widget is customized to display different clubs on the homescreen

class ClubCard extends StatelessWidget {
  // Takes the following data

  final String clubName;
  final String clubIntro;
  final String imagePath;
  final String clubHead;
  final String? headContactNum;
  final String clubEmail;
  final String clubInfo;

  const ClubCard({

    required this.clubName,
    required this.clubIntro,
    required this.imagePath,
    required this.clubHead,
    required this.clubEmail,
    this.headContactNum,
    required this.clubInfo,
  });

  @override
  Widget build(BuildContext context) {
    // on clicking it navigates to the respective club screen
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClubScreen(
              clubInfo: clubInfo,
              clubName: clubName,
              clubImage: imagePath,
              clubHead: clubHead,
              clubEmail: clubEmail,
              headContactNum: headContactNum,
            ),
          ),
        );
      },
      child: SizedBox(
        width: 220,
        child: Card(
          color: kPaleOrangeColor,
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: Image.asset(imagePath, alignment: Alignment.center,),
                  child: Image(
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
              Text(
                clubName,
                style: GoogleFonts.robotoSlab(
                  // fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              Text(
                clubIntro,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 8)
            ],
          ),
        ),
      ),
    );
  }
}
