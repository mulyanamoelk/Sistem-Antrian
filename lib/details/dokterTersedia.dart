import 'package:flutter/material.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/cardObat.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/cardTersedia.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/card_dokter.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/cardtips.dart';

class DokterTersedia extends StatefulWidget {
  const DokterTersedia({Key? key}) : super(key: key);

  @override
  State<DokterTersedia> createState() => _DokterTersediaState();
}

class _DokterTersediaState extends State<DokterTersedia> {
  @override
  Widget build(BuildContext context) {
    // back button
    Widget section() {
      return Container(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ]));
    }

    //layanan tersedia
    Widget section2() {
      return Container(
        padding: EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Temukan doktermu',
                style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            Text(' pelayanan kesehatan hadir ditengah \n keluarga anda',
                style: TextStyle(
                    color: Color(0xff82868E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: Color(0xffD0DBEA))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: Color(0xff1FCC79))),
                    prefixIcon: Icon(Icons.search, color: Color(0xff1FCC79)),
                    hintText: 'Cari Dokter'))
          ],
        ),
      );
    }

    //spesialist
    Widget section3() {
      return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Klinik Specialist',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 24,
                  fontWeight: FontWeight.bold))
        ]),
      );
    }

    //Container
    Widget section4() {
      //penyakit
      Widget penyakit() {
        return Container(
          decoration: BoxDecoration(),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //ortho
            InkWell(
              onTap: () {},
              child: Column(children: [
                cardTersedia(
                    ImageUrl: 'asset/images/details/ortho.png',
                    title: 'Ortho',
                    link: 'ortho'),
              ]),
            ),
            //paru
            InkWell(
              onTap: () {},
              child: Column(children: [
                cardTersedia(
                    ImageUrl: 'asset/images/details/paru.png',
                    title: 'Paru',
                    link: 'ortho'),
              ]),
            ),
            //urology
            InkWell(
              onTap: () {},
              child: Column(children: [
                cardTersedia(
                    ImageUrl: 'asset/images/details/urology.png',
                    title: 'Urology',
                    link: 'ortho'),
              ]),
            ),
            //jantung
            InkWell(
              onTap: () {},
              child: Column(children: [
                cardTersedia(
                    ImageUrl: 'asset/images/details/jantung.png',
                    title: 'Jantung',
                    link: 'ortho'),
              ]),
            ),
          ]),
        );
      }

      //rekomendasi
      Widget rekomendasi() {
        return Container(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text('Recommended Dokter',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        );
      }

      //semua dokter
      Widget dokter() {
        return Container(
          padding: EdgeInsets.fromLTRB(33, 0, 33, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              //pertama
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'kalender');
                },
                child: Row(
                  children: [
                    cardDokter(
                        ImageUrl: 'asset/images/buatJanji/bedah.png',
                        link: 'link'),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Dr. Luthfi',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 18)),
                          Text(' Dokter Umum',
                              style: TextStyle(
                                  color: Color(0xff127451), fontSize: 16)),
                          Text(
                              ' 2 tahun \n STR,12334455656 \n 08:00 - 11:00 am ',
                              style: TextStyle(
                                  color: Color(0xff7A7E86), fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //kedua
              SizedBox(
                height: 5,
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'kalender');
                },
                child: Row(
                  children: [
                    cardDokter(
                        ImageUrl: 'asset/images/buatJanji/bedah.png',
                        link: 'link'),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Dr. Luthfi',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 18)),
                          Text(' Dokter Umum',
                              style: TextStyle(
                                  color: Color(0xff127451), fontSize: 16)),
                          Text(
                              ' 2 tahun \n STR,12334455656 \n 08:00 - 11:00 am ',
                              style: TextStyle(
                                  color: Color(0xff7A7E86), fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //ketiga
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'kalender');
                },
                child: Row(
                  children: [
                    cardDokter(
                        ImageUrl: 'asset/images/buatJanji/bedah.png',
                        link: 'link'),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Dr. Luthfi',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 18)),
                          Text(' Dokter Umum',
                              style: TextStyle(
                                  color: Color(0xff127451), fontSize: 16)),
                          Text(
                              ' 2 tahun \n STR,12334455656 \n 08:00 - 11:00 am ',
                              style: TextStyle(
                                  color: Color(0xff7A7E86), fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              //ke empat
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'kalender');
                },
                child: Row(
                  children: [
                    cardDokter(
                        ImageUrl: 'asset/images/buatJanji/bedah.png',
                        link: 'link'),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Dr. Luthfi',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 18)),
                          Text(' Dokter Umum',
                              style: TextStyle(
                                  color: Color(0xff127451), fontSize: 16)),
                          Text(
                              ' 2 tahun \n STR,12334455656 \n 08:00 - 11:00 am ',
                              style: TextStyle(
                                  color: Color(0xff7A7E86), fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        );
      }

      //sehat dirumah
      Widget sehat() {
        return Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardTips(ImageUrl: 'asset/images/details/homecare.png'),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sehat Dirumah',
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 18)),
                            Text('Paket HomeCare 1',
                                style: TextStyle(
                                    color: Color(0xff7A7E86), fontSize: 14)),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.line_axis_rounded))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //baby shampoo
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardTips(
                          ImageUrl: 'asset/images/details/baby-shampoo.png'),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Baby Care',
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 18)),
                            Text('Perawatan bayi baru lahir',
                                style: TextStyle(
                                    color: Color(0xff7A7E86), fontSize: 14)),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.line_axis_rounded))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardTips(ImageUrl: 'asset/images/details/homecare.png'),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sehat Dirumah',
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 18)),
                            Text('Paket HomeCare 1',
                                style: TextStyle(
                                    color: Color(0xff7A7E86), fontSize: 14)),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.line_axis_rounded))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //baby shampoo
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardTips(
                          ImageUrl: 'asset/images/details/baby-shampoo.png'),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Baby Care',
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 18)),
                            Text('Perawatan bayi baru lahir',
                                style: TextStyle(
                                    color: Color(0xff7A7E86), fontSize: 14)),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.line_axis_rounded))
                    ],
                  ),
                )
              ],
            ));
      }

      return Container(
        padding: EdgeInsets.only(top: 10),
        width: 365,
        height: 886,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33),
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 3,
                color: Colors.black12,
              )
            ]
            // border: Border(top: BorderSide(width: 2.0, color: Color(0xff9FA5C0))),
            ),
        child: Column(children: <Widget>[
          penyakit(),
          SizedBox(height: 10),
          rekomendasi(),
          SizedBox(height: 10),
          dokter(),
          SizedBox(
            height: 10,
          ),
          sehat(),
        ]),
      );
    }

    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(24, 10, 24, 0),
      child: ListView(
        children: <Widget>[
          Center(
            child: Column(children: [
              section(),
              SizedBox(
                height: 10,
              ),
              section2(),
              SizedBox(
                height: 20,
              ),
              section3(),
              SizedBox(
                height: 20,
              ),
              section4(),
            ]),
          )
        ],
      ),
    ));
  }
}
