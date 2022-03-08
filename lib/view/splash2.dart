import 'package:flutter/material.dart';

class splash2 extends StatelessWidget {
  const splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sehat adalah \nAset terbesar kita",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('asset/images/splash/phonecall.png'),
                    width: 394,
                    height: 295,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(17)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'buatJanji');
                      },
                      child: Text(
                        "Mulai",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
