import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistem_antrian/pages/Signin/signIn.dart';

class CheckRecovery extends StatefulWidget {
  const CheckRecovery({Key? key}) : super(key: key);

  @override
  State<CheckRecovery> createState() => _CheckRecoveryState();
}

class _CheckRecoveryState extends State<CheckRecovery> {
  @override
  Widget build(BuildContext context) {
    Widget section() {
      return Container(
        child: Column(children: [
          Text('Check your email',
              style: TextStyle(
                  color: Color(0xff2E3E5C),
                  fontSize: 22,
                  fontWeight: FontWeight.w700)),
          SizedBox(
            height: 10,
          ),
          Text('We’ve sent the code to your email',
              style: TextStyle(
                  color: Color(0xff9FA5C0),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
        ]),
      );
    }

    //section Next
    Widget sectionLogin(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 30),
          width: 327,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xff1FCC79),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(SignIn());
                  },
                  child: Text('Next',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    //section send again
    Widget sectionsend(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Text(
              'Send again',
              style: TextStyle(
                  color: Color(0xff9FA5C0),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView(children: [
          Center(
            child: Column(children: [
              section(),
              sectionLogin(context),
              sectionsend(context),
            ]),
          )
        ]),
      ),
    );
  }
}
