import 'package:flutter/material.dart';

class detailRsNurhayati extends StatelessWidget {
  const detailRsNurhayati({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Stack(
        children: <Widget>[
          Image(
            image: AssetImage('asset/images/deatil/gambarRsNurhayati.png'),
            height: 286,
          ),
          Icon(Icons.heart_broken)
        ],
      );
    }

    Widget section2() {
      return Container(
        child: Row(
          children: <Widget>[
            Text(
              "Klinik Corner \nRS Nurhayati",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Column(
              children: <Widget>[
                Icon(Icons.map),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                )
              ],
            )
          ],
        ),
      );
    }

    Widget section3() {
      return Container(
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.local_post_office),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Bikin Janji",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.local_post_office),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Resep Obat",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.local_post_office),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Konsultasi",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget section4() {
      Widget s4content1(String hari) {
        return Container(
          width: 85,
          height: 62,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            hari,
            style: TextStyle(fontSize: 9),
          ),
        );
      }

      return Container(
        child: Column(
          children: <Widget>[
            Text(
              "Pilih tanggal dan waktu kunjungan",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                s4content1("Hari ini\n09 Mar"),
                SizedBox(height: 20),
                s4content1("Hari ini\n10 Mar"),
                SizedBox(height: 20),
                s4content1("Hari ini\n11 Mar"),
              ],
            ),
            Container(
                width: 85,
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.calendar_month)),
          ],
        ),
      );
    }

    Widget section5() {
      Widget s5content1(String title, String imageUrl) {
        return Container(
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Image(image: AssetImage(imageUrl))
            ],
          ),
        );
      }

      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            s5content1("Penyakit Dalam", "asset/images/splash/pic.png"),
            s5content1("Bedah", "asset/images/splash/pic.png"),
            s5content1("Umum", "asset/images/splash/pic.png")
          ],
        ),
      );
    }

    Widget section6() {
      return Container(
          width: 331,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: Text(
            "Buat Janji",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ));
    }

    return Scaffold(
      body: ListView(
        children: <Widget>[
          section1(),
          section2(),
          section3(),
          section4(),
          section5(),
          section6()
        ],
      ),
    );
  }
}
