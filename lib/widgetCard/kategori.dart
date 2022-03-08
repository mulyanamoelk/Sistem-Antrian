import 'package:flutter/material.dart';

class Cardkategori extends StatelessWidget {
  final String imageUrl;
  final String title;
  const Cardkategori({ Key? key,required this.imageUrl, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       
      color: Colors.white,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Container(
           width: 80,
           height: 83,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(60),
             image: DecorationImage(image: AssetImage(imageUrl))
           ),
         ),
         SizedBox(height: 10,),
         Text(
            title,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
       ],
     ),
    );
  }
}