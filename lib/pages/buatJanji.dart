import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sistem_antrian/widgetCard/kategori.dart';
import 'package:sistem_antrian/widgetCard/promo.dart';
import 'package:sistem_antrian/widgetCard/rsSekitar.dart';

class buatJanji extends StatelessWidget {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'detailRsNurhayati');
          },
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
                    cardRs(
                        imageUrl: "asset/images/buatJanji/jiwa.png",
                        title: "RSIH",
                        link: 'detailRsNurhayati'),
                    SizedBox(
                      width: 10,
                    ),
                    cardRs(
                        imageUrl: "asset/images/buatJanji/jiwa.png",
                        title: "Achlan Medika",
                        link: "detailRsNurhayati"),
                    SizedBox(
                      width: 10,
                    ),
                    cardRs(
                        imageUrl: "asset/images/buatJanji/jiwa.png",
                        title: "Achlan Medika",
                        link: 'detailRsNurhayati'),
                    SizedBox(
                      width: 10,
                    ),
                    cardRs(
                        imageUrl: "asset/images/buatJanji/jiwa.png",
                        title: "Achlan Medika",
                        link: 'detailRsNurhayati'),
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
          padding: EdgeInsets.all(20),
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
            ],
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xff1FCC79),
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.pending_actions, title: 'Riwayat Transaksi'),
            TabItem(icon: Icons.scanner, title: 'Scan'),
            TabItem(icon: Icons.notifications, title: 'Notifications'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 2, //optional, default as 0
          onTap: (int i) => print('click index=$i'),
        ));
  }

  void setState(Null Function() param0) {}
}
