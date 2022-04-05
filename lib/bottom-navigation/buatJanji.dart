import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sistem_antrian/bottom-navigation/convex-bar.dart';
import 'package:sistem_antrian/widgetCard/kategori.dart';
import 'package:sistem_antrian/widgetCard/promo.dart';
import 'package:sistem_antrian/widgetCard/rsSekitar.dart';

class buatJanji extends StatelessWidget {
  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Container(child: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            )),
            Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: Colors.red)))
          ]));
    }

    //logo santi
    Widget section2() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('asset/images/buatJanji/Logo.png'),
              width: 90,
              height: 90,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Rumah sakit & klinik \nTerdekat",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }

    //klinik sekitar
    Widget section3(BuildContext context) {
      return Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Rs/Klinik Sekitar Anda",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                //rs 1
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'detailRsNurhayati');
                  },
                  child: Row(
                    children: [
                      cardRs(
                          imageUrl:
                              "asset/images/details/gambarRsNurhayati.png",
                          title: "RSIH",
                          link: 'detailRsNurhayati'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                //rs 2
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      cardRs(
                          imageUrl: "asset/images/details/queen.jpg",
                          title: "Annisa Queen",
                          link: 'annisa Queen'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                //rs 3
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      cardRs(
                          imageUrl:
                              "asset/images/details/gambarRsNurhayati.png",
                          title: "RSIH",
                          link: 'detailRsNurhayati'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                //rs 4
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      cardRs(
                          imageUrl:
                              "asset/images/details/gambarRsNurhayati.png",
                          title: "RSIH",
                          link: 'detailRsNurhayati'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                //rs 5
                InkWell(
                  child: Row(
                    children: [
                      cardRs(
                          imageUrl:
                              "asset/images/details/gambarRsNurhayati.png",
                          title: "RSIH",
                          link: 'detailRsNurhayati'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ));
    }

    Widget section4() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Kategori specialis",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Cardkategori(
                      imageUrl: "asset/images/buatJanji/bedah.png",
                      title: "Bedah",
                      link: 'bedah'),
                  SizedBox(
                    width: 20,
                  ),
                  Cardkategori(
                      imageUrl: "asset/images/buatJanji/bedah.png",
                      title: "Bedah",
                      link: 'bedah'),
                  SizedBox(
                    width: 20,
                  ),
                  Cardkategori(
                      imageUrl: "asset/images/buatJanji/bedah.png",
                      title: "Bedah",
                      link: 'bedah'),
                  SizedBox(
                    width: 20,
                  ),
                  Cardkategori(
                      imageUrl: "asset/images/buatJanji/bedah.png",
                      title: "Bedah",
                      link: 'bedah'),
                  SizedBox(
                    width: 20,
                  ),
                  Cardkategori(
                      imageUrl: "asset/images/buatJanji/bedah.png",
                      title: "Bedah",
                      link: 'bedah'),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    //promo menarik
    Widget section5() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Promo Menarik",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  cardPromo(imageUrl: "asset/images/buatJanji/kartini.png"),
                  SizedBox(
                    width: 10,
                  ),
                  cardPromo(imageUrl: "asset/images/buatJanji/kartini.png"),
                  SizedBox(
                    width: 10,
                  ),
                  cardPromo(imageUrl: "asset/images/buatJanji/kartini.png"),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    //section6
    Widget section6() {
      return Container(
        margin: EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(47),
        ),
        child: Column(
          children: [
            Image.asset(
              'asset/images/buatJanji/janji.png',
              width: 334,
              height: 190,
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
        child: ListView(
          children: <Widget>[
            section1(),
            SizedBox(height: 20),
            section2(),
            SizedBox(height: 20),
            section3(context),
            SizedBox(height: 20),
            section4(),
            SizedBox(height: 20),
            section5(),
            SizedBox(height: 50),
            section6(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
