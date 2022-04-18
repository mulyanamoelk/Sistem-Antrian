import 'package:flutter/material.dart';
import 'package:sistem_antrian/Rumahsakit/atur_jadwal.dart';
import 'package:sistem_antrian/Rumahsakit/detailRsNurhayati.dart';
import 'package:sistem_antrian/Rumahsakit/dokterTersedia.dart';

import 'package:sistem_antrian/bottom-navigation/convex-bar.dart';

import 'package:get/get.dart';
import 'package:sistem_antrian/pages/booking.dart';

import 'package:sistem_antrian/view/splash.dart';
import 'package:sistem_antrian/view/splash2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => splash()),
        GetPage(
          name: '/navbar',
          page: () => convex(),
          transition: Transition.zoom,
        ),
        GetPage(
            name: '/splash2',
            page: () => splash2(),
            transition: Transition.zoom),
        GetPage(
            name: '/nurhayati',
            page: () => DetailRsNurhayati(),
            transition: Transition.zoom),
        GetPage(
            name: '/buatJanji',
            page: () => DokterTersedia(),
            transition: Transition.zoom),
        GetPage(
          name: '/kalender',
          page: () => AturJadwal(),
        ),
        GetPage(
            name: '/appoinment',
            page: () => booking(),
            transition: Transition.zoom)
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
