import 'package:flutter/material.dart';

class cardTips extends StatelessWidget {
  final String ImageUrl;
  const cardTips({Key? key, required this.ImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
            width: 54,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageUrl))))
      ],
    ));
  }
}
