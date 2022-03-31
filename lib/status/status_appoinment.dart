import 'dart:developer';

import 'package:flutter/material.dart';

class status_appoinment extends StatefulWidget {
  const status_appoinment({Key? key}) : super(key: key);

  @override
  State<status_appoinment> createState() => _status_appoinmentState();
}

class _status_appoinmentState extends State<status_appoinment> {
  //share
  Widget section() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'asset/images/profile/Vector.png',
            width: 24,
            height: 24,
          )
        ],
      ),
    );
  }

  //bookings
  Widget section2() {
    return Text('Bookings',
        style: TextStyle(
            color: Color(0xff3E5481),
            fontSize: 17,
            fontWeight: FontWeight.bold));
  }

  //proses
  Widget section3() {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //sukses
        Container(
          width: 106,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color(0xffA4A4A4)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sukses',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        //diproses
        Container(
          width: 106,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color(0xff1FCC79)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Diproses',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        //batal
        Container(
          width: 106,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color(0xffA4A4A4)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Batal',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold))
            ],
          ),
        )
      ]),
    );
  }

  //timeline tile
  Widget section4() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(20),
            child: ListView(children: [
              Center(
                child: Column(
                  children: [
                    section(),
                    SizedBox(height: 20),
                    section2(),
                    SizedBox(height: 20),
                    section3(),
                    SizedBox(height: 20),
                    section4(),
                  ],
                ),
              ),
            ])));
  }
}
