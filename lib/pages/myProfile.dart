import 'package:flutter/material.dart';

class myProfile extends StatelessWidget {
  const myProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget text(String paragraf) {
      return Container(
        child: Text(
          paragraf,
          style: TextStyle(
              fontSize: 15, color: Colors.black),
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Detail Lainnya\nBook An\nAppointment",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            text("> Membawa KTP asli untuk pasien baru."),
            SizedBox(height: 10,),
            text("> Untuk yang pernah melakukan perawatan pemeiksaan diharapkan membawa kartu pasien pada saat pertama registrasi"),
            SizedBox(height: 20,),
            Text(
              "Detail Lainnya\nBook An\nAppointment",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black),
            ),
            text("> pembatalan janji kunjungan dapat dilakukan melalui aplikasi meditan maksimal 12 jam sebelum waktu janji kunjungan."),
            SizedBox(height: 10,),
            text("> informasi pembatalan bisa menghubungi layanan Chat Admin meditan di menu bantuan aplikasi Meditan."),
            SizedBox(height: 10,),
            Container(
              width:331,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
              onPressed: (){}, 
              child: Text("Buat Janji", style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
