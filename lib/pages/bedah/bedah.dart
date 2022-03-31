import 'package:flutter/material.dart';

class Bedah extends StatefulWidget {
  const Bedah({Key? key}) : super(key: key);

  @override
  State<Bedah> createState() => _BedahState();
}

class _BedahState extends State<Bedah> {
  @override
  Widget build(BuildContext context) {
    //section 1
    Widget section() {
      return Container();
    }

    return Scaffold(
        body: Container(
            child: ListView(
      children: [
        section(),
      ],
    )));
  }
}
