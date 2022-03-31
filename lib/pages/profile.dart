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

    //doni
    Widget sectionDoni() {
      return Container(
          decoration: BoxDecoration(),
          child: Column(
            children: <Widget>[
              InkWell(
                splashColor: Colors.black,
                onTap: () {},
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('asset/images/profile/Chat.png'),
                      width: 45,
                      height: 42,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Chat',
                        style:
                            TextStyle(color: Color(0xff000000), fontSize: 12)),
                  ],
                ),
              ),
            ],
          ));
    }

    //phone
    Widget sectionPhone() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Row(children: <Widget>[
                      Image.asset('asset/images/profile/phone.png',
                          width: 25, height: 35),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Phone',
                          style: TextStyle(
                              color: Color(0xff3E5481), fontSize: 17)),
                    ])),
                Container(
                    child: Column(children: <Widget>[
                  Image.asset(
                    'asset/images/profile/password.png',
                    width: 45,
                    height: 42,
                  ),
                  Text('Chat',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.normal)),
                ])),
              ]));
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
                  sectionDoni(),
                  sectionPhone(),
                ],
              ))
            ])));
  }
}
