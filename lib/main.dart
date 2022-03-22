import 'package:flutter/material.dart';
import 'package:sistem_antrian/details/atur_jadwal.dart';
import 'package:sistem_antrian/details/detailRsNurhayati.dart';
import 'package:sistem_antrian/details/dokterTersedia.dart';
import 'package:sistem_antrian/pages/Sigin/Pass-recovery.dart';
import 'package:sistem_antrian/pages/Sigin/Pass-verification.dart';
import 'package:sistem_antrian/pages/Sigin/SignUp.dart';
import 'package:sistem_antrian/pages/Sigin/newPassword.dart';

import 'package:sistem_antrian/pages/Sigin/signIn.dart';
import 'package:sistem_antrian/pages/Sigin/verification.dart';

import 'package:sistem_antrian/pages/booking.dart';
import 'package:sistem_antrian/pages/buatJanji.dart';

import 'package:sistem_antrian/pages/profile.dart';

import 'package:sistem_antrian/pages/upload-step1.dart';
import 'package:sistem_antrian/pages/upload-step2.dart';

import 'package:sistem_antrian/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: booking(),
        routes: <String, WidgetBuilder>{
          // 'buatJanji': (BuildContext contest) => buatJanji(),
          'signUp': (BuildContext context) => SignUp(),
          'menulogin': (BuildContext context) => SignIn(),
          'verification': (BuildContext context) => verification(),
          'newPassword': (BuildContext context) => newPassword(),
          'passRecovery': (BuildContext context) => PassRecovery(),
          'emailCheck': (BuildContext context) => CheckRecovery(),
          'detailRsNurhayati': (BuildContext context) => DetailRsNurhayati(),
          'janji': (BuildContext context) => DokterTersedia(),
          'kalender': (BuildContext context) => AturJadwal(),
        });
  }
}
