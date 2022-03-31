import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/Signin/verification.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  //
  @override
  Widget build(BuildContext context) {
    //sectionisi data
    Widget section() {
      return Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(children: <Widget>[
            Text('Silahkan isi data Anda',
                style: TextStyle(
                    color: Color(0xff2E3E5C),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
          ]));
    }

    //section Email
    Widget sectionEmail() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
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

    // section Phone
    Widget sectionPhone() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xff9FA5C0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xff1FCC79))),
                  labelText: 'Phone Number'),
            ),
          ]));
    }

    //section password
    Widget sectionPassword() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: _obscureText,
              autofocus: false,
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
            )
          ]));
    }

    //sectionpassword kedua
    Widget sectionPassword2() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: _obscureText,
              autofocus: false,
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
                  labelText: 'Ulangi Password'),
            )
          ]));
    }

    //section Login
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
                  onPressed: () async {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (p) => verification()));
                  },
                  child: Text('Daftar',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    //section sudah punya akun
    Widget sectionSudah(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sudah Punya Akun?',
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
                    Navigator.pushNamed(context, 'menulogin');
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: Color(0xff1FCC79),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)))
            ],
          ));
    }

    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(24, 10, 24, 0),
      child: ListView(children: [
        Center(
          child: Column(
            children: [
              section(),
              sectionEmail(),
              sectionPhone(),
              sectionPassword(),
              sectionPassword2(),
              sectionLogin(context),
              sectionSudah(context),
            ],
          ),
        )
      ]),
    ));
  }
}
