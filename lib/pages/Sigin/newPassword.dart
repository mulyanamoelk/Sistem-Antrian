import 'package:flutter/material.dart';

class newPassword extends StatefulWidget {
  const newPassword({Key? key}) : super(key: key);

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Widget section() {
      return Container(
        child: Column(
          children: [
            Text('Reset your password',
                style: TextStyle(
                    color: Color(0xff2E3E5C),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 10,
            ),
            Text('Please enter your new password',
                style: TextStyle(
                    color: Color(0xff9FA5C0),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      );
    }

    //password pertama
    Widget sectionPass() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
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
                      borderSide: BorderSide(color: Color(0xff1FCC79))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xff2E3E5C))),
                  labelText: 'Password'),
            ),
          ]));
    }

    //section pass ulangi
    Widget sectionPass2() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
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
                      borderSide: BorderSide(color: Color(0xff1FCC79))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xff2E3E5C))),
                  labelText: 'Ulangi Password'),
            ),
          ]));
    }

    //section your
    Widget sectionYour() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Your Password must contain:',
                style: TextStyle(
                    color: Color(0xff3E5481),
                    fontSize: 17,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      );
    }

    //section Button
    Widget sectionButton(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 50),
          width: 327,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xff1FCC79),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'passRecovery');
                },
                child: Text('Done',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w700)))
          ]));
    }

    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(24),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    section(),
                    sectionPass(),
                    sectionPass2(),
                    sectionYour(),
                    sectionButton(context),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
