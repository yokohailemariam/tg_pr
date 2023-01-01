import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InlineText extends StatelessWidget {
  final String title;
  const InlineText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(child: Divider()),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xff858585)),
        ),
      ),
      const Expanded(child: Divider()),
    ]);
  }
}
