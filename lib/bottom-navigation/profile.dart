import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistem_antrian/pages/status-appoinment/slide.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //section1

    //Photo
    Widget section() {
      return Container(
          child: Column(
        children: <Widget>[
          Image.asset(
            'images/Avatar.png',
            width: 160,
            height: 158,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Doni Setiadi',
              style: TextStyle(color: Color(0xff3E5481), fontSize: 17)),
        ],
      ));
    }

    Widget section2() {
      return Container(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                Get.to(slide());
              },
              child: Text('button'))
        ],
      ));
    }

    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(24),
      child: ListView(children: [
        section(),
        section2(),
      ]),
    ));
  }
}
