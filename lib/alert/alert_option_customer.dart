import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sistem_antrian/pages/Signin/signIn.dart';
import 'package:sistem_antrian/pages/booking.dart';

class PopupDialog extends StatelessWidget {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  ElevatedButton(
                    child: Text('Lama'),
                    onPressed: () => _onAlertWithCustomContentPressed(context),
                  ),
                  ElevatedButton(
                    child: Text('Baru'),
                    onPressed: () {
                      Get.to(SignIn());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// Alert custom content
  _onAlertWithCustomContentPressed(context) {
    Alert(
      context: context,
      title: "Pasien Lama",
      content: Container(
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.people_alt_sharp),
                labelText: 'NIK',
                hintText: '3205050107990055',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xff9FA5C0))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xff1FCC79))),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xff9FA5C0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xff1FCC79))),
                  labelText: 'Password'),
            ),
            Container(
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
                          Get.to(booking());
                        },
                        child: Text('Login',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)))
                  ],
                ))
          ],
        ),
      ),
      // buttons: [
      //   DialogButton(
      //     onPressed: () => Navigator.pop(context),
      //     child: Text(
      //       "LOGIN",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 15,
      //       ),
      //     ),
      //   )
      // ]
    ).show();
  }

  void setState(Null Function() param0) {}

// Alert without root navigator
  // _onAlertWithRootNavigator(BuildContext context) {
  //   Alert(context: context, content: booking()).show();
  // }
}
