import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
            image: AssetImage('asset/images/details/gambarRsNurhayati.png'),
            width: 398,
            height: 286,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 30, 0, 0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(90)),
            child: Column(
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pop(context);
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
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ]),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.map),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  )
                ],
              ),
            ),
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
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'janji');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            card1(
                ImageUrl: 'asset/images/buatJanji/buatJanji.png',
                title: 'buat janji',
                link: 'janji'),
            card1(
                ImageUrl: 'asset/images/buatJanji/obat.png',
                title: 'Obat',
                link: 'janji'),
            card1(
                ImageUrl: 'asset/images/buatJanji/konsultasi.png',
                title: 'Konsultasi',
                link: 'janji')
          ],
        ),
      );
    }

    //layanan tersedia
    Widget section5() {
      return GestureDetector(
        onDoubleTap: () {},
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardTersedia(
                      ImageUrl: 'asset/images/details/ortho.png',
                      title: 'Ortho',
                      link: 'ortho'),
                  cardTersedia(
                      ImageUrl: 'asset/images/details/paru.png',
                      title: 'paru',
                      link: 'paru'),
                  cardTersedia(
                      ImageUrl: 'asset/images/details/urology.png',
                      title: 'Urology',
                      link: 'paru'),
                  cardTersedia(
                      ImageUrl: 'asset/images/details/jantung.png',
                      title: 'Jantung',
                      link: 'paru')
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
                      ImageUrl: 'asset/images/details/pic.png', link: 'pic'),
                  SizedBox(width: 10),
                  cardTentang(
                      ImageUrl: 'asset/images/details/pic.png', link: 'pic'),
                  SizedBox(width: 10),
                  cardTentang(
                      ImageUrl: 'asset/images/details/pic.png', link: 'pic'),
                  SizedBox(width: 10),
                  cardTentang(
                      ImageUrl: 'asset/images/details/pic.png', link: 'pic')
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(24, 10, 24, 24),
          child: Center(
            child: ListView(
              children: <Widget>[
                section1(),
                SizedBox(
                  height: 24,
                ),
                section2(),
                SizedBox(
                  height: 24,
                ),
                section3(),
                SizedBox(
                  height: 24,
                ),
                section4(),
                SizedBox(
                  height: 24,
                ),
                section5(),
                SizedBox(
                  height: 24,
                ),
                section6(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xff1FCC79),
          activeColor: Colors.white,

          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.pending_actions, title: 'Riwayat \n Transaksi'),
            TabItem(icon: Icons.scanner, title: 'Scan'),
            TabItem(icon: Icons.notifications, title: 'Notifications'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 2, //optional, default as 0
          onTap: (int i) => print('click index=$i'),
        ));
  }
}
