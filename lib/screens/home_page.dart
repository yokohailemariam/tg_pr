import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/widget/cardTile.dart';
import 'package:tg_pr/screens/profile_screen.dart';
import 'package:tg_pr/utils/constants.dart';
import 'package:tg_pr/widget/chart_analysis_card.dart';
import 'package:tg_pr/widget/gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Constants.lightPurple,
                Constants.mainPurple,
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          },
                          child: const CircleAvatar(
                            maxRadius: 32,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/vector.jpg'),
                              maxRadius: 30,
                            ),
                          ),
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Image.asset('assets/app1.jpg')),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Text(
                      'Hello Solian',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Let\'s Check our status',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                    child: SizedBox(
                      height: 260,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ChartAnalysisCard(),
                          ChartAnalysisCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: GradientText(
                      firstColor: Constants.lightPurple,
                      secondColor: Constants.mainPurple,
                      child: Text(
                        'Recent operations',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: const BoxDecoration(
                        color: Color(0xff858585),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(0))),
                    child: Text(
                      'Today',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                  const TransListView(
                    imageUrl: 'assets/vector.jpg',
                    name: 'John Doe',
                    phoneNumber: '+251 939 09 0908',
                    price: '1000',
                    time: '04:08',
                  ),
                  const TransListView(
                    imageUrl: 'assets/vector.jpg',
                    name: 'John Doe',
                    phoneNumber: '+251 939 09 0908',
                    price: '1000',
                    time: '04:08',
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: const BoxDecoration(
                        color: Color(0xff858585),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(0))),
                    child: Text(
                      'Yesterday',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                  const TransListView(
                    imageUrl: 'assets/vector.jpg',
                    name: 'John Doe',
                    phoneNumber: '+251 939 09 0908',
                    price: '1000',
                    time: '04:08',
                  ),
                  const TransListView(
                    imageUrl: 'assets/vector.jpg',
                    name: 'John Doe',
                    phoneNumber: '+251 939 09 0908',
                    price: '1000',
                    time: '04:08',
                  ),
                  const TransListView(
                    imageUrl: 'assets/vector.jpg',
                    name: 'John Doe',
                    phoneNumber: '+251 939 09 0908',
                    price: '1000',
                    time: '04:08',
                  ),
                  const TransListView(
                    imageUrl: 'assets/vector.jpg',
                    name: 'John Doe',
                    phoneNumber: '+251 939 09 0908',
                    price: '1000',
                    time: '04:08',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
