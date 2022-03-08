import 'package:flutter/material.dart';

class cardRs extends StatelessWidget {
  final String imageUrl;
  final String title;
  const cardRs({Key? key, required this.imageUrl, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.grey[200],
      ),
     child: Column(
       children: <Widget>[
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             image: DecorationImage(image: AssetImage(imageUrl))
           ),
         ),
         Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
       ],
     ),
    );
  }
}
