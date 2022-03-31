import 'package:flutter/material.dart';

class cardTentang extends StatelessWidget {
  final String ImageUrl;

  final String link;
  const cardTentang({Key? key, required this.ImageUrl, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          width: 111,
          height: 89,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageUrl)))),
    ]));
  }
}
