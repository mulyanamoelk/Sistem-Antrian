import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistem_antrian/pages/Signin/Pass-verification.dart';

class PassRecovery extends StatefulWidget {
  const PassRecovery({Key? key}) : super(key: key);

  @override
  State<PassRecovery> createState() => _PassRecoveryState();
}

class _PassRecoveryState extends State<PassRecovery> {
  @override
  Widget build(BuildContext context) {
    Widget section() {
      return Container(
        child: Column(children: [
          Text('Password recovery',
              style: TextStyle(
                  color: Color(0xff2E3E5C),
                  fontSize: 22,
                  fontWeight: FontWeight.w700)),
          SizedBox(
            height: 10,
          ),
          Text('Enter your email to recover your password',
              style: TextStyle(
                  color: Color(0xff9FA5C0),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
        ]),
      );
    }

    //sectionEmail
    Widget sectionEmail() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xff9FA5C0))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xff1FCC79))),
                labelText: 'Email or phone number'),
          )
        ]),
      );
    }

    //section Sign In
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
                    Get.to(CheckRecovery());
                  },
                  child: Text('Sign In',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView(children: [
          Center(
            child: Column(children: [
              section(),
              sectionEmail(),
              sectionLogin(context),
            ]),
          )
        ]),
      ),
    );
  }
}
