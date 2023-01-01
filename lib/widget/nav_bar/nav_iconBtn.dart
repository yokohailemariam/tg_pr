import 'package:flutter/material.dart';
import 'package:tg_pr/utils/constants.dart';

enum NavIconButtonDirection { left, right, bottom, top, all }

class NavIconButton extends StatelessWidget {
  const NavIconButton({
    Key? key,
    required this.active,
    required this.onPressed,
    this.child,
    this.icon,
    required this.direction,
    this.title,
  }) : super(key: key);

  final bool active;
  final Function onPressed;
  final Widget? child;
  final NavIconButtonDirection direction;
  final IconData? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: InkResponse(
        radius: MediaQuery.of(context).size.width / 8,
        splashFactory: InkRipple.splashFactory,
        onTap: () => onPressed(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child ??
                Icon(
                  icon,
                  size: 32,
                  color: active
                      ? Constants.mainPurple
                      : theme.textTheme.bodyText1?.color?.withOpacity(0.4),
                ),
            if (active)
              const CircleAvatar(
                maxRadius: 3,
                backgroundColor: Constants.mainPurple,
              )
            // Text(
            //   title ?? '',
            //   style: theme.textTheme.caption?.copyWith(
            //       fontSize: 10,
            //       color: active
            //           ? theme.primaryColor
            //           : theme.textTheme.bodyText1?.color?.withOpacity(0.4)),
            // ),
          ],
        ),
      ),
    );
  }
}
