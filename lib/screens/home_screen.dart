import '../exports.dart';

class HomeScreen extends StatefulWidget {
  static String id = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _announcements = [];
  List<List<String>> _clubs = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _announcements = [
      "Hello",
      "World",
      "Hi",
    ];
    // the data about clubs
    _clubs = [
      [
        "YACC",
        "The Coding Club",
        'assets/images/yacc.jpg',
        "Nideesh N,Jyothiradithya,Syed Abdul Mateen,Rishav Kumar,Saarang S,Lekshmi R Nair,Yukta Salunkhe,Nilesh Jamre,Priyanshu Gupta",
        "yacc@iitpkd.ac.in",
        "1234567891",
        "A dynamic and inclusive community of passionate coders and algorithmic thinkers. Our mission is to foster a deep and abiding love for coding, share knowledge, and provide a platform for students to enhance their coding skills and take on real-world challenges. YACC has five independent and parallel tracks that you can excel in: Competitive Programming, Ethical Hacking, Full stack development, Game development and System Design. YACC strives to build strong coding and problem-solving culture in the institute and to make programming a cherishable experience for students with different skill sets.",
      ],
      [
        "ShutterBug",
        "The Photography Club",
        'assets/images/shutterbug.png',
        "Utsav Patel",
        "shutterbug@iitpkd.ac.in",
        "1234567891",
        "Welcome to Shutterbug, the Photography Club at IIT Palakkad! Discover the magic of capturing moments with us. Our club offers a range of exciting events, including workshops on composition, lighting, and post-processing, conducted by experienced photographers. Join our photowalks to diverse locations, exploring the beauty of Palakkad while sharpening your skills. Whether you're a beginner or a seasoned photographer, Shutterbug provides a supportive community to share ideas and collaborate. Unleash your creativity, tell stories, and freeze time with Shutterbug. Join us on a captivating journey of self-expression through the lens at IIT Palakkad.",
      ],
      [
        "Akshar",
        "The Literary Club",
        'assets/images/akshar.jpg',
        "Sarath A",
        "akshar@iitpkd.ac.in",
        "1234567891",
        "Akshar is the Literary and Oratory Arts Society of IIT Palakkad. We bring together passionate writers, poets, and artists to celebrate the power of words and creativity. Ours is a thriving community of ambitious minds keen on sharpening our literary skills. We organise lots of literally powered events and competitions like writing competitions, debates, and slam poetry sessions, cryptic crosswords and much more. On weekends, we engage in informal events like Scrabble Saturdays, JAM (Just A Minute). Akshar emboldens students to express their minds and let their creativity flow. We as a community are also extensively backed up by Alumnus who were actively involved.",
      ],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text("Clubs"),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (int i = 0; i < _clubs.length; i++)
                  // customised card widget to display different clubs
                  ClubCard(
                    clubName: _clubs[i][0],
                    clubIntro: _clubs[i][1],
                    imagePath: _clubs[i][2],
                    clubHead: _clubs[i][3],
                    clubEmail: _clubs[i][4],
                    clubInfo: _clubs[i][6],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Announcements"),
          // Announcement List
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: _announcements.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: AnnouncementCard(content: _announcements[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
