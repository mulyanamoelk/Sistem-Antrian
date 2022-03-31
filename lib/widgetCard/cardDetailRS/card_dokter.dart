import 'package:flutter/material.dart';

class cardDokter extends StatelessWidget {
  final String ImageUrl;
  final String link;
  const cardDokter({Key? key, required this.ImageUrl, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          width: 80,
          height: 83,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageUrl))),
        )
      ],
    ));
  }
}
