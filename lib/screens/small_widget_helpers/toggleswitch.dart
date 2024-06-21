


import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool ison = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: ison,
      activeTrackColor: const Color.fromRGBO(89, 121, 238, 1.0),
      activeColor: getWhiteColor(),

      inactiveTrackColor: getWhiteColor(),
      inactiveThumbColor: const Color.fromRGBO(0, 0, 0, 1.0),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          ison = value;
        });
      },
    );
  }
}
