import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Widget section() {
      return Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(children: <Widget>[
            Text('Welcome',
                style: TextStyle(
                    color: Color(0xff2E3E5C),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 10,
            ),
            Text('Please enter your account here',
                style: TextStyle(
                    color: Color(0xff9FA5C0),
                    fontSize: 15,
                    fontWeight: FontWeight.w300))
          ]));
    }

    //Email
    Widget sectionEmail() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xffD0DBEA))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xff2E3E5C))),
                labelText: 'Email or phone number'),
          )
        ]),
      );
    }

    //password
    Widget sectionPassword() {
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
                    borderSide: BorderSide(color: Color(0xffD0DBEA))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0xff2E3E5C))),
                labelText: 'Password'),
          )
        ]),
      );
    }

    //lupa password
    Widget sectionLupa() {
      return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'verification');
            },
            child: Text('Lupa Password?',
                style: TextStyle(
                    color: Color(0xff2E3E5C),
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
          )
        ]),
      );
    }

    //Login
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
                  onPressed: () {},
                  child: Text('Login',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    //or continue
    Widget sectionOr() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Text('Or Continue with',
                style: TextStyle(
                    color: Color(0xff9FA5C0),
                    fontSize: 15,
                    fontWeight: FontWeight.w500))
          ],
        ),
      );
    }

    //section google login
    Widget sectionGoogle(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 20),
          width: 327,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xffFF5842),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('Google',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }
    //belum punya akun

    Widget sectionBelum(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Belum Mempunyai Akun?',
                  style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signUp');
                  },
                  child: Text('Daftar',
                      style: TextStyle(
                          color: Color(0xff1FCC79),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: [
                section(),
                sectionEmail(),
                sectionPassword(),
                sectionLupa(),
                sectionLogin(context),
                sectionOr(),
                sectionGoogle(context),
                sectionBelum(context),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
