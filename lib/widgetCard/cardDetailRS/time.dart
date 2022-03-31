import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String title;
  const Time({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 27,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff707070)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
