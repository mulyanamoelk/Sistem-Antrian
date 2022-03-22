import 'dart:html';

import 'package:flutter/material.dart';

class card1 extends StatelessWidget {
  final String ImageUrl;
  final String title;
  final String link;
  const card1(
      {Key? key,
      required this.ImageUrl,
      required this.title,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 42,
            height: 47,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: AssetImage(ImageUrl))),
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff82868E),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
