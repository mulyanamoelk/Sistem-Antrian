import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:sistem_antrian/Rumahsakit/dokterTersedia.dart';
import 'package:sistem_antrian/Rumahsakit/maps.dart';

import 'package:sistem_antrian/widgetCard/cardDetailRS/cardObat.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/cardTentang.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/cardTersedia.dart';

class DetailRsNurhayati extends StatefulWidget {
  const DetailRsNurhayati({Key? key}) : super(key: key);

  @override
  State<DetailRsNurhayati> createState() => _DetailRsNurhayatiState();
}

class _DetailRsNurhayatiState extends State<DetailRsNurhayati> {
  @override
  Widget build(BuildContext context) {
    //hero image
    Widget section1() {
      return Stack(
        children: <Widget>[
          Image(
            image: AssetImage('images/gambarRsNurhayati.png'),
            width: 398,
            height: 286,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 30, 0, 0),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(90)),
            child: Column(
              children: [
                BackButton(
                  onPressed: () {
                    Get.back();
                  },
                )
              ],
            ),
          ),
        ],
      );
    }

    //klinik corner
    Widget section2() {
      return Container(
        margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(children: [
                Text(
                  " Klinik Corner \n RSIH",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  Get.to(MapSample(), transition: Transition.downToUp);
                },
                child: Row(
                  children: <Widget>[
                    Text(
                      'Lokasi',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.maps_home_work_outlined),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    //section membuat janji
    Widget section3() {
      return Container(
        margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
      );
    }

    //pilih tanggal
    Widget section4() {
      return Container(
          margin: EdgeInsets.fromLTRB(24, 5, 24, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // buat janji
              InkWell(
                onTap: () {
                  Get.toNamed('/buatJanji');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    card1(
                        ImageUrl: 'images/buatJanji.png',
                        title: 'buat janji',
                        link: 'janji'),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    card1(
                        ImageUrl: 'images/obat.png',
                        title: 'Resep Obat',
                        link: 'obat'),
                  ],
                ),
              ),
              InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      card1(
                          ImageUrl: 'images/konsultasi.png',
                          title: 'Konsultasi',
                          link: '/'),
                    ],
                  ))
            ],
          ));
    }

    //layanan tersedia
    Widget section5() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Klinik yang tersedia',
              style: TextStyle(
                  color: Color(0xff82868E), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 5, 24, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardTersedia(
                    ImageUrl: 'images/ortho.png',
                    title: 'Ortho',
                  ),
                  cardTersedia(
                    ImageUrl: 'images/paru.png',
                    title: 'paru',
                  ),
                  cardTersedia(
                    ImageUrl: 'images/urology.png',
                    title: 'Urology',
                  ),
                  cardTersedia(
                    ImageUrl: 'images/jantung.png',
                    title: 'Jantung',
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    //tentang klinik
    Widget section6() {
      return Container(
        margin: EdgeInsets.fromLTRB(24, 5, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tentang Klinik',
              style: TextStyle(
                  color: Color(0xff82868E),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardTentang(
                    ImageUrl: 'images/rs.png',
                  ),
                  SizedBox(width: 10),
                  cardTentang(
                    ImageUrl: 'images/rs.png',
                  ),
                  SizedBox(width: 10),
                  cardTentang(
                    ImageUrl: 'images/rs.png',
                  ),
                  SizedBox(width: 10),
                  cardTentang(
                    ImageUrl: 'images/rs.png',
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    //maps
    Widget section7() {
      return Container(
          child: Column(
        children: [],
      ));
    }

    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                section1(),
                SizedBox(
                  height: 10,
                ),
                section2(),
                SizedBox(
                  height: 10,
                ),
                section3(),
                SizedBox(
                  height: 10,
                ),
                section4(),
                SizedBox(
                  height: 10,
                ),
                section5(),
                SizedBox(
                  height: 10,
                ),
                section6(),
                SizedBox(
                  height: 10,
                ),
                section7(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
