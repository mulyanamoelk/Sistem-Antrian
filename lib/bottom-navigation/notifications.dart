import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    //section
    Widget section() {
      return Container(
        child: Column(children: [Text('Notifications')]),
      );
    }

    return Scaffold(
        body: Container(
      child: ListView(children: [
        section(),
      ]),
    ));
  }
}
