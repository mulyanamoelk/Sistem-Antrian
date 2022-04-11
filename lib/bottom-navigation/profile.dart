import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //section1
    Widget section() {
      return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Image.asset(
            'asset/images/profile/Vector.png',
            width: 19,
            height: 18,
          )
        ]),
      );
    }

    //Photo
    Widget sectionHero() {
      return Container(
          child: Column(
        children: <Widget>[
          Image.asset(
            'asset/images/profile/Avatar.png',
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

    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(24),
            child: Column(children: <Widget>[
              Center(
                  child: Column(
                children: [
                  section(),
                  sectionHero(),
                ],
              ))
            ])));
  }
}
