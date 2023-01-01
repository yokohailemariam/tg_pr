import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/utils/constants.dart';
import 'package:tg_pr/utils/helper.dart';
import 'package:tg_pr/screens/login.dart';
import 'package:tg_pr/screens/nav_bar.dart';
import 'package:tg_pr/widget/gradient_text.dart';
import 'package:tg_pr/widget/inline_text.dart';
import 'package:tg_pr/widget/login_signup_suggestion.dart';
import 'package:tg_pr/widget/rahove_button.dart';
import 'package:tg_pr/widget/social_icon_button.dart';
import 'package:tg_pr/widget/text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: withSpacing(
                spacing: 26,
                children: [
                  GradientText(
                    firstColor: Constants.lightPurple,
                    secondColor: Constants.mainPurple,
                    child: Text(
                      'Welcome',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        color: Constants.whiteColor,
                      ),
                    ),
                  ),
                  Text(
                    'Became a member of our platform',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Constants.grayColor,
                    ),
                  ),
                  RehoveTextField(
                    title: 'Full name',
                    onChanged: (val) => {},
                  ),
                  RehoveTextField(
                    title: 'Email',
                    onChanged: (val) => {},
                  ),
                  RehoveTextField(
                    title: 'Password',
                    onChanged: (val) => {},
                  ),
                  RahoveButton(
                      title: 'Sign up',
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BottomNavButton(),
                          ),
                        );
                      }),
                  const InlineText(title: 'Sign up with'),
                  const SocialIconButtons(),
                  LoginOrSignUpSuggestion(
                    title: 'Already have an account?',
                    secondTitle: 'Log in',
                    onPress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
