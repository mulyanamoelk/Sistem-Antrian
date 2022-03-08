import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sistem_antrian/view/splash2.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  splash() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => splash2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 50),
              child: Image(
                image: AssetImage('asset/images/splash/pic.png'),
                width: 87,
                height: 93,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Mudah konsultasi \n& membuat janji \ndengan tim Medis",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Image(
                image: AssetImage('asset/images/splash/appoitment1.png'),
                width: 328,
                height: 314,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
