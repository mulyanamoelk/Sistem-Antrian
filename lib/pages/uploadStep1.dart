import 'package:flutter/material.dart';

class uploadStep1 extends StatelessWidget {
  const uploadStep1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section1(){
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
            "Book An\nAppontment",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            Text(
            "1/2",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      );
    }
    Widget section2(){
      return Container(
        child: Column(
          children: <Widget>[
            Text(
            "1/2",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "pribadi",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
              ),
            )
          ],
        ),
      );
    }
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}