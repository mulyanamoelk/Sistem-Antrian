import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:sistem_antrian/bottom-navigation/convex-bar.dart';

class splash2 extends StatelessWidget {
  const splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section() {
      return Container(
          margin: EdgeInsets.fromLTRB(24, 40, 0, 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Sehat adalah \nAset terbesar kita",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ]));
    }

    //lottie
    Widget section2() {
      return Container(
          width: 341,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Lottie.network(
                  'https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',
                )
              ]));
    }

    //button
    Widget section3(BuildContext context) {
      return Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xff1FCC79),
              borderRadius: BorderRadius.circular(17)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/navbar');
              },
              child: Text(
                "Mulai",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ]));
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Center(
          child: ListView(
            children: <Widget>[
              section(),
              SizedBox(
                height: 10,
              ),
              section2(),
              SizedBox(
                height: 30,
              ),
              section3(context),
            ],
          ),
        ),
      ),
    );
  }
}
