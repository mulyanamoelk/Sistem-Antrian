import 'package:flutter/material.dart';

class cardTersedia extends StatelessWidget {
  final String ImageUrl;
  final String title;
  final String link;
  const cardTersedia(
      {Key? key,
      required this.ImageUrl,
      required this.title,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          width: 42,
          height: 45,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageUrl)))),
      Text(title, style: TextStyle(color: Color(0xff707070), fontSize: 13))
    ]));
  }
}
