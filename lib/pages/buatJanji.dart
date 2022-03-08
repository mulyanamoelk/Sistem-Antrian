import 'package:flutter/material.dart';
import 'package:sistem_antrian/widgetCard/kategori.dart';
import 'package:sistem_antrian/widgetCard/promo.dart';
import 'package:sistem_antrian/widgetCard/rsSekitar.dart';


class buatJanji extends StatelessWidget {
  const buatJanji({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Container(
        child: Row(
          children: <Widget>[
            TextButton(onPressed: () {}, child: Icon(Icons.back_hand_sharp))
          ],
        ),
      );
    }

    Widget section2() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('asset/images/splash/pic.png'),
              width: 87,
              height: 93,
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

    Widget section3() {
      return Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Rs/Klinik Sekitar Anda",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                cardRs(
                  imageUrl: "asset/images/splash/phonecall.png",
                  title: "aku",
                ),
                SizedBox(
                  width: 10,
                ),
                cardRs(
                  imageUrl: "asset/images/splash/phonecall.png",
                  title: "aku",
                ),
                SizedBox(
                  width: 10,
                ),
                cardRs(
                  imageUrl: "asset/images/splash/phonecall.png",
                  title: "aku",
                ),
                SizedBox(
                  width: 10,
                ),
                cardRs(
                  imageUrl: "asset/images/splash/phonecall.png",
                  title: "aku",
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
              "Rs/Klinik Sekitar Anda",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Cardkategori(
                    imageUrl: "asset/images/splash/pic.png", 
                    title: "Dokter Umum"
                  ),
                  SizedBox(width: 10,),
                  Cardkategori(
                    imageUrl: "asset/images/splash/pic.png", 
                    title: "Dokter Umum"
                  ),
                  SizedBox(width: 10,),
                  Cardkategori(
                    imageUrl: "asset/images/splash/pic.png", 
                    title: "Dokter Umum"
                  ),
                  SizedBox(width: 10,),
                  Cardkategori(
                    imageUrl: "asset/images/splash/pic.png", 
                    title: "Dokter Umum"
                  ),
                  SizedBox(width: 10,),
                  Cardkategori(
                    imageUrl: "asset/images/splash/pic.png", 
                    title: "Dokter Umum"
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            )
          ],
        ),
      );
    }
    Widget section5(){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Promo Menarik",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  cardPromo(),
                  SizedBox(width: 10,),
                  cardPromo(),
                  SizedBox(width: 10,),
                  cardPromo(),
                  SizedBox(width: 10,),
                  cardPromo(),
                  SizedBox(width: 10,),
                  cardPromo(),
                  SizedBox(width: 10,),
                ],
              ),
            )
          ],
        ),
      );
    }
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            section1(),
            SizedBox(height: 20),
            section2(),
            SizedBox(height: 20),
            section3(),
            SizedBox(height: 20),
            section4(),
            SizedBox(height: 20),
            section5()
          ],
        ),
      ),
    );
  }
}
