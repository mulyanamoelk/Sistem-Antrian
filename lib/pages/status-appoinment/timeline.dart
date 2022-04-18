import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineTile extends StatelessWidget {
  const TimelineTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [TimelineTile()],
    ));
  }
}
