import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
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
      Get.toNamed('/splash2');
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget section() {
      return Container(
        margin: EdgeInsets.fromLTRB(24, 47, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('images/Logo.png'),
              width: 87,
              height: 93,
            ),
          ],
        ),
      );
    }

    //tulisan
    Widget section2() {
      return Container(
          width: 219,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Mudah konsultasi \n& membuat janji \ndengan tim Medis",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ));
    }

    //gambar
    Widget section3() {
      return Container(
          width: 341,
          child: Center(
            child: Column(children: <Widget>[
              Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',
              )
            ]),
          ));
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            section(),
            section2(),
            section3(),
          ],
        ),
      ),
    );
  }
}
