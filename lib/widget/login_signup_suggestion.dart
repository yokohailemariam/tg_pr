import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/widget/gradient_text.dart';

class LoginOrSignUpSuggestion extends StatelessWidget {
  final String title;
  final String secondTitle;
  final Function()? onPress;
  const LoginOrSignUpSuggestion(
      {Key? key, required this.title, this.onPress, required this.secondTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14)),
        TextButton(
          onPressed: onPress,
          child: GradientText(
            firstColor: const Color(0xff9747FF),
            secondColor: const Color(0xff3B136F),
            child: Text(
              secondTitle,
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
