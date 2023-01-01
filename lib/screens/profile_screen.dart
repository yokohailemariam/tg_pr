import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';
import 'package:tg_pr/utils/helper.dart';
import 'package:tg_pr/widget/profile_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: FlexibleHeaderDelegate(
              statusBarHeight: MediaQuery.of(context).padding.top,
              collapsedElevation: 4,
              expandedHeight: 460,
              collapsedHeight: 400,
              background: MutableBackground(
                  animationDuration: const Duration(milliseconds: 1000),
                  expandedWidget: Image.asset(
                    'assets/vector.jpg',
                    fit: BoxFit.cover,
                  ),
                  // collapsedColor: primaryColor,
                  collapsedWidget: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(71, 118, 230, 0.7),
                              Color.fromRGBO(142, 84, 233, 0.82)
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          maxRadius: 60,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            maxRadius: 56,
                            backgroundImage: AssetImage('assets/vector.jpg'),
                          ),
                        ),
                      )
                    ],
                  )),
              actions: [
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
              children: [
                FlexibleTextItem(
                  text: 'Liya dereje',
                  collapsedStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  expandedStyle: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  expandedAlignment: Alignment.bottomLeft,
                  collapsedAlignment: Alignment.bottomCenter,
                  expandedPadding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 12),
                  collapsedPadding:
                      const EdgeInsets.symmetric(vertical: 90, horizontal: 12),
                ),
                const FlexibleTextItem(
                  text: 'Liyadereje2@gmail.com',
                  collapsedStyle: TextStyle(fontSize: 16, color: Colors.white),
                  expandedStyle: TextStyle(fontSize: 16, color: Colors.white),
                  expandedAlignment: Alignment.bottomLeft,
                  collapsedAlignment: Alignment.bottomCenter,
                  expandedPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  collapsedPadding:
                      EdgeInsets.symmetric(vertical: 70, horizontal: 12),
                ),
                const FlexibleTextItem(
                  text: 'Edit profile',
                  collapsedStyle: TextStyle(fontSize: 16, color: Colors.white),
                  expandedStyle: TextStyle(fontSize: 16, color: Colors.white),
                  expandedAlignment: Alignment.bottomRight,
                  collapsedAlignment: Alignment.bottomCenter,
                  expandedPadding:
                      EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  collapsedPadding:
                      EdgeInsets.symmetric(vertical: 50, horizontal: 12),
                ),
              ],
            ),
          ),
          const _SliverList(),
        ],
      ),
    );
  }
}

class _DartLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Image.asset('assets/profile_picture.jpg'),
    );
  }
}

class _SliverList extends StatelessWidget {
  const _SliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        withSpacing(
          spacing: 12,
          children: [
            const ProfileListItem(
                title: 'Notification', icon: Icons.notifications, num: '4'),
            const ProfileListItem(title: 'Reports', icon: Icons.sync, num: '4'),
            const ProfileListItem(
                title: 'Email', icon: Icons.mail_outline, num: '2'),
            const ProfileListItem(
                title: 'Security and policy', icon: Icons.security, num: '4'),
            const ProfileListItem(
                title: 'Termas and Policy',
                icon: Icons.policy_outlined,
                num: '4'),
            const ProfileListItem(
                title: 'Logout', icon: Icons.logout, num: '4'),
          ],
        ),
      ),
    );
  }
}
