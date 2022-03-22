import 'package:flutter/material.dart';
import 'package:sistem_antrian/widgetCard/cardDetailRS/card_dokter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

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
        margin: EdgeInsets.fromLTRB(34, 34, 24, 0),
        child: Row(children: [
          Container(
            child: Column(children: [
              cardDokter(
                  ImageUrl: 'asset/images/buatJanji/bedah.png', link: 'link')
            ]),
          ),
          SizedBox(width: 30),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pilih Jadwal',
                style: TextStyle(color: Color(0xff000000), fontSize: 16))
          ],
        ),
      );
    }

    //jadwal Praktek
    Widget section3() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jadwal Praktek',
                style: TextStyle(color: Color(0xff000000), fontSize: 16))
          ],
        ),
      );
    }

    //kalender
    Widget section4(BuildContext context) {
      return Container(
          margin: EdgeInsets.only(top: 100),
          child: Row(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ],
          ));
    }

    return Scaffold(
        body: Container(
            child: Center(
      child: Column(children: [
        section(),
        SizedBox(height: 20),
        section2(),
        SizedBox(height: 20),
        section3(),
        SizedBox(height: 20),
        section4(context),
      ]),
    )));
  }
}
