import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Toggle_Switch_Orang extends StatefulWidget {
  const Toggle_Switch_Orang({Key? key}) : super(key: key);

  @override
  State<Toggle_Switch_Orang> createState() => _Toggle_Switch_OrangState();
}

class _Toggle_Switch_OrangState extends State<Toggle_Switch_Orang> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 90.0,
      initialLabelIndex: 1,
      cornerRadius: 20.0,
      activeFgColor: Color(0xff3E5481),
      inactiveBgColor: Colors.grey,
      inactiveFgColor: Colors.white,
      totalSwitches: 2,
      labels: ['Baru', 'Lama'],
      activeBgColors: [
        [Color(0xff1FCC79)],
        [Color(0xff1FCC79)]
      ],
      onToggle: (index) {
        setState(() {});
        // print('switched to: $index');
      },
    );
  }
}
