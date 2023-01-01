import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/screens/nav_bar.dart';
import 'package:tg_pr/screens/signup.dart';
import 'package:tg_pr/utils/constants.dart';
import 'package:tg_pr/utils/helper.dart';
import 'package:tg_pr/widget/gradient_text.dart';
import 'package:tg_pr/widget/inline_text.dart';
import 'package:tg_pr/widget/login_signup_suggestion.dart';
import 'package:tg_pr/widget/rahove_button.dart';
import 'package:tg_pr/widget/social_icon_button.dart';
import 'package:tg_pr/widget/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                      "Get started",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        color: Constants.whiteColor,
                      ),
                    ),
                  ),
                  Text(
                    'Become a memeber of out platform',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Constants.grayColor,
                    ),
                  ),
                  RehoveTextField(
                    title: 'Email',
                    onChanged: (val) => {},
                  ),
                  RehoveTextField(
                    title: 'Password',
                    onChanged: (val) => {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: Text(
                            'Forget password ?',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xff858585)),
                          ),
                        )
                      ],
                    ),
                  ),
                  RahoveButton(
                      title: 'Log in',
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BottomNavButton(),
                          ),
                        );
                      }),
                  const InlineText(title: 'Log in with'),
                  const SocialIconButtons(),
                  LoginOrSignUpSuggestion(
                    title: 'Don\'t have an account?',
                    secondTitle: 'Sign up',
                    onPress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
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
