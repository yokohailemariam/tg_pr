import 'package:flutter/material.dart';
import 'package:tg_pr/screens/home_page.dart';
import 'package:tg_pr/screens/profile_screen.dart';
import 'package:tg_pr/widget/nav_bar/nav_iconBtn.dart';

class BottomNavButton extends StatefulWidget {
  const BottomNavButton({super.key});

  @override
  State<BottomNavButton> createState() => _BottomNavButtonState();
}

class _BottomNavButtonState extends State<BottomNavButton> {
  var _currentNav = BottomNavItem.Home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentNav.index,
        children: const [
          HomePage(),
          Center(child: Text('Analysis')),
          Center(child: Text('Report')),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentActive: _currentNav,
        onChange: (newNav) {
          if (newNav == _currentNav) {
            // _reload(newNav);
          }
          setState(() => _currentNav = newNav);
        },
        onFabPressed: () => {},
      ),
    );
  }
}

enum BottomNavItem {
  // ignore: constant_identifier_names
  Home,
  // ignore: constant_identifier_names
  Analysis,
  // ignore: constant_identifier_names
  Report,
  // ignore: constant_identifier_names
  Profile,
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentActive,
    required this.onChange,
    required this.onFabPressed,
  }) : super(key: key);

  final BottomNavItem currentActive;
  final Function onChange;
  final Function onFabPressed;

  @override
  Widget build(BuildContext context) {
    // final notiCont = Get.find<NotificationController>();
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          topLeft: Radius.circular(100),
        ),
      ),
      child: Material(
        color: Colors.white,
        child: SizedBox(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavIconButton(
                active: currentActive == BottomNavItem.Home,
                onPressed: () {
                  onChange(BottomNavItem.Home);
                },
                icon: Icons.house,
                direction: NavIconButtonDirection.left,
              ),
              NavIconButton(
                active: currentActive == BottomNavItem.Analysis,
                onPressed: () {
                  onChange(BottomNavItem.Analysis);
                },
                icon: Icons.analytics,
                direction: NavIconButtonDirection.all,
              ),
              NavIconButton(
                active: currentActive == BottomNavItem.Report,
                onPressed: () {
                  onChange(BottomNavItem.Report);
                },
                icon: Icons.aod,
                direction: NavIconButtonDirection.all,
              ),
              NavIconButton(
                title: 'profile',
                active: currentActive == BottomNavItem.Profile,
                onPressed: () {
                  onChange(BottomNavItem.Profile);
                },
                icon: Icons.person,
                direction: NavIconButtonDirection.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
