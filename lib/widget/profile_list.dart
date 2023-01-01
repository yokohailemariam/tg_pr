import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tg_pr/widget/ShadedIcon.dart';

class ProfileListItem extends StatelessWidget {
  final String title;
  final String num;
  final IconData icon;
  const ProfileListItem(
      {Key? key, required this.title, required this.num, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: const BoxDecoration(color: Color(0xffF7F7F7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShadedIcon(icon: icon),
          const SizedBox(width: 24),
          Text(
            title,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          const Spacer(),
          Text(
            num,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
