import 'package:flutter/material.dart';

class cardPromo extends StatelessWidget {
  const cardPromo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow
      ),
    );
  }
}