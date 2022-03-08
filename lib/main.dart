import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/buatJanji.dart';
import 'package:sistem_antrian/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: splash(),

      routes: <String, WidgetBuilder>{
        'buatJanji' : (BuildContext contest) => buatJanji(),
      }
    );
  }
}