import 'package:flutter/material.dart';
import 'package:tg_pr/utils/constants.dart';

class ShadedIcon extends StatelessWidget {
  final IconData icon;
  final bool? active;
  const ShadedIcon({Key? key, required this.icon, this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        const Rect rect = Rect.fromLTRB(0, 0, 200, 70);
        return const LinearGradient(
                colors: [Constants.lightPurple, Constants.mainPurple])
            .createShader(rect);
      },
      child: SizedBox(
        width: 30,
        height: 30,
        child: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
