import 'package:flutter/material.dart';

class cardPromo extends StatelessWidget {
  final String imageUrl;
  const cardPromo({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 87,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.yellow),
      child: Column(
        children: <Widget>[
          Container(
            width: 166,
            height: 87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(imageUrl))),
          ),
        ],
      ),
    );
  }
}
