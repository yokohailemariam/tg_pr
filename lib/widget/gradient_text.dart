import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final Widget child;
  const GradientText({
    Key? key,
    required this.firstColor,
    required this.secondColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: const Alignment(0, -1),
        end: const Alignment(0, 0),
        colors: [
          firstColor,
          secondColor,
        ],
      ).createShader(const Rect.fromLTRB(0, 0, 100, 150)),
      child: child,
    );
  }
}
