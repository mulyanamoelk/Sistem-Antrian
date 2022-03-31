import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class verification extends StatefulWidget {
  const verification({Key? key}) : super(key: key);

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  String _code = "";
  @override
  Widget build(BuildContext context) {
    //section1
    Widget section() {
      return Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(children: <Widget>[
            Text('Check your notif sms',
                style: TextStyle(
                    color: Color(0xff2E3E5C),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 10,
            ),
            Text('We.ve sent the code to your email',
                style: TextStyle(
                    color: Color(0xff9FA5C0),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ]));
    }

    //otp
    Widget sectionOtp() {
      return Container(
          child: Row(
        children: [
          PhoneFieldHint(),
          Spacer(),
          PinFieldAutoFill(
            decoration: UnderlineDecoration(
              textStyle: TextStyle(fontSize: 20, color: Colors.black),
              colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
            ),
            currentCode: "00000",
            onCodeSubmitted: (code) {},
            onCodeChanged: (code) {
              if (code!.length == 6) {
                FocusScope.of(context).requestFocus(FocusNode());
              }
            },
          ),
          Spacer(),
          TextFieldPinAutoFill(
            currentCode: _code,
          ),
          Spacer(),
          ElevatedButton(
            child: Text('Listen for sms code'),
            onPressed: () async {
              await SmsAutoFill().listenForCode;
            },
          ),
          ElevatedButton(
            child: Text('Set code to 123456'),
            onPressed: () async {
              setState(() {
                _code = '123456';
              });
            },
          ),
        ],
      ));
    }

    //section Verify
    Widget sectionVerify(BuildContext context) {
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
                    Navigator.pushNamed(context, 'newPassword');
                  },
                  child: Text('Verify',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    //section send lagi
    Widget sectionUlangi(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('Send again',
                      style: TextStyle(
                          color: Color(0xff9FA5C0),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Center(
            child: Column(children: [
              section(),
              sectionVerify(context),
              sectionUlangi(context),
            ]),
          )
        ],
      )),
    );
  }
}
