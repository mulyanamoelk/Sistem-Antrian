import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {

    Widget section(){
      return Container();
    }
    return Scaffold(
      body: Container(
       child: ListView(children: <Widget>[ 
         section(),
       ],)
      )
    );
  }
}