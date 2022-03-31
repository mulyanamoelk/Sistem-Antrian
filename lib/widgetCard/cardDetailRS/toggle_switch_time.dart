import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Toggle_Switch_Time extends StatefulWidget {
  const Toggle_Switch_Time({Key? key}) : super(key: key);

  @override
  State<Toggle_Switch_Time> createState() => _Toggle_Switch_TimeState();
}

class _Toggle_Switch_TimeState extends State<Toggle_Switch_Time> {
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
      labels: ['Pagi', 'Sore'],
      activeBgColors: [
        [Color(0xff1FCC79)],
        [Color(0xff1FCC79)]
      ],
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
