import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sistem_antrian/bottom-navigation/history.dart';
import 'package:sistem_antrian/bottom-navigation/notifications.dart';
import 'package:sistem_antrian/details/detailRsNurhayati.dart';
import 'package:sistem_antrian/pages/Signin/signIn.dart';
import 'package:sistem_antrian/pages/booking.dart';
import 'package:sistem_antrian/bottom-navigation/buatJanji.dart';
import 'package:sistem_antrian/bottom-navigation/myProfile.dart';

class convex extends StatefulWidget {
  const convex({Key? key}) : super(key: key);

  @override
  State<convex> createState() => _convexState();
}

class _convexState extends State<convex> {
  late int index;
  List showWidget = [
    buatJanji(),
    History(),
    History(),
    Notifications(),
    myProfile(),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: showWidget[index],
        bottomNavigationBar: ConvexAppBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          backgroundColor: Color(0xff1FCC79),
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.pending_actions, title: 'History'),
            TabItem(icon: Icons.search, title: 'Search'),
            TabItem(icon: Icons.notifications, title: 'Notifications'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
        ));
  }
}
