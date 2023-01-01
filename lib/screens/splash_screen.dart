import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/screens/login.dart';
import 'package:tg_pr/screens/nav_bar.dart';
import 'package:tg_pr/utils/constants.dart';
import 'package:tg_pr/widget/gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText(
            'Rahove',
            textStyle: GoogleFonts.inter(
              fontSize: 44,
              fontWeight: FontWeight.w700,
              color: Constants.lightPurple,
            ),
            rotateOut: false,
            // speed: const Duration(milliseconds: 2000),
          ),
        ],
        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      )),
    );
  }
}
