import 'package:flutter/material.dart';

class cardTentang extends StatelessWidget {
  final String ImageUrl;

  const cardTentang({
    Key? key,
    required this.ImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          width: 111,
          height: 89,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(ImageUrl)))),
    ]));
  }
}
