import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIconButtons extends StatelessWidget {
  const SocialIconButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset('assets/google.svg'),
        SvgPicture.asset('assets/facebook.svg'),
        SvgPicture.asset('assets/apple.svg', color: Colors.black),
      ],
    );
  }
}
