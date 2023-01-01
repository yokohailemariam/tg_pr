import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RahoveButton extends StatelessWidget {
  final String title;
  final Function()? onPress;
  const RahoveButton({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade200,
            Colors.deepPurple.shade400,
          ],
        ),
      ),
      child: InkWell(
        onTap: onPress,
        child: Text(
          title,
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
