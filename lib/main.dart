import 'package:flutter/material.dart';

import 'package:sistem_antrian/details/atur_jadwal.dart';
import 'package:sistem_antrian/details/detailRsNurhayati.dart';
import 'package:sistem_antrian/details/dokterTersedia.dart';
import 'package:sistem_antrian/details/maps.dart';
import 'package:sistem_antrian/pages/Signin/Pass-recovery.dart';
import 'package:sistem_antrian/pages/Signin/Pass-verification.dart';
import 'package:sistem_antrian/pages/Signin/SignUp.dart';
import 'package:sistem_antrian/pages/Signin/newPassword.dart';

import 'package:sistem_antrian/pages/Signin/signIn.dart';
import 'package:sistem_antrian/pages/Signin/verification.dart';
import 'package:sistem_antrian/pages/booking.dart';
import 'package:sistem_antrian/bottom-navigation/buatJanji.dart';
import 'package:sistem_antrian/bottom-navigation/convex-bar.dart';
import 'package:sistem_antrian/status/status_appoinment.dart';

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
        home: splash(),
        routes: <String, WidgetBuilder>{
          'buatJanji': (BuildContext contest) => buatJanji(),
          'convex': (BuildContext context) => convex(),
          'signUp': (BuildContext context) => SignUp(),
          'menulogin': (BuildContext context) => SignIn(),
          'verification': (BuildContext context) => verification(),
          'appoinment': (BuildContext context) => booking(),
          'newPassword': (BuildContext context) => newPassword(),
          'passRecovery': (BuildContext context) => PassRecovery(),
          'emailCheck': (BuildContext context) => CheckRecovery(),
          'detailRsNurhayati': (BuildContext context) => DetailRsNurhayati(),
          'rsNurhayati': (BuildContext context) => DetailRsNurhayati(),
          'janji': (BuildContext context) => DokterTersedia(),
          'kalender': (BuildContext context) => AturJadwal(),
          'statusAppoinment': (BuildContext context) => status_appoinment(),
        });
  }
}
