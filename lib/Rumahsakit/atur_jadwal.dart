import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sistem_antrian/pages/booking.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/time.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/toggle_switch_time.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:sistem_antrian/widgetCard/cardDetailRS/calender.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/card_dokter.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(AturJadwal()));
}

class AturJadwal extends StatefulWidget {
  const AturJadwal({Key? key}) : super(key: key);

  @override
  State<AturJadwal> createState() => _AturJadwalState();
}

class _AturJadwalState extends State<AturJadwal> {
  @override
  Widget build(BuildContext context) {
    //dokter
    Widget section() {
      return Container(
        margin: EdgeInsets.fromLTRB(34, 24, 24, 0),
        child: Row(children: [
          Container(
            child: Column(children: [
              cardDokter(
                ImageUrl: 'images/bedah.png',
              )
            ]),
          ),
          SizedBox(width: 5),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Dr. Luthfi',
                    style: TextStyle(color: Color(0xff000000), fontSize: 18)),
                Text(' Dokter Umum',
                    style: TextStyle(color: Color(0xff127451), fontSize: 16)),
                Text(' 2 tahun \n STR,12334455656 \n 08:00 - 11:00 am ',
                    style: TextStyle(color: Color(0xff7A7E86), fontSize: 14)),
              ],
            ),
          )
        ]),
      );
    }

    //pilih jadwal
    Widget section2() {
      return Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pilih Jadwal',
                style: TextStyle(color: Color(0xff000000), fontSize: 16))
          ],
        ),
      );
    }

    //kalender
    Widget section3(BuildContext context) {
      return Calender();
    }

    //jadwal Praktek
    Widget section4() {
      return Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Jadwal Praktek',
                style: TextStyle(color: Color(0xff000000), fontSize: 16))
          ],
        ),
      );
    }

    //switch button
    Widget section5() {
      return Toggle_Switch_Time();
    }

    //memilih waktu pertama
    Widget section6() {
      return Container(
        margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Time(title: '08:00 AM'),
            Time(title: '09:00 AM'),
            Time(title: '10:00 PM')
          ],
        ),
      );
    }

    //memilih waktu baris kedua
    Widget section7() {
      return Container(
        margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Time(title: '08:00 AM'),
            Time(title: '09:00 AM'),
            Time(title: '10:00 PM')
          ],
        ),
      );
    }

    //memilih waktu barisi ketiga
    Widget section8() {
      return Container(
        margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Time(title: '08:00 AM'),
            Time(title: '09:00 AM'),
            Time(title: '10:00 PM')
          ],
        ),
      );
    }

    //button
    Widget section9(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        width: 156,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32), color: Color(0xff1FCC79)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.toNamed('/appoinment');
                },
                child: Text('Lanjut',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
            margin: EdgeInsets.fromLTRB(24, 10, 24, 0),
            child: ListView(
              children: [
                Center(
                  child: Column(children: [
                    section(),
                    SizedBox(height: 10),
                    section2(),
                    SizedBox(height: 10),
                    section3(context),
                    SizedBox(height: 20),
                    section4(),
                    SizedBox(height: 20),
                    section5(),
                    SizedBox(height: 10),
                    section6(),
                    SizedBox(height: 10),
                    section7(),
                    SizedBox(height: 10),
                    section8(),
                    SizedBox(height: 50),
                    section9(context),
                  ]),
                )
              ],
            )));
  }
}
