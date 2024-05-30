import 'package:flutter/material.dart';

import 'small_widget_helpers/backgroundgradient.dart';
import 'small_widget_helpers/navigatorbar.dart';
import 'small_widget_helpers/toggleswitch.dart';
import 'small_widget_helpers/topBar.dart';

const textStyle = TextStyle(fontSize: 20);

var options = <Row>[
  Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Keep turned on foor: ", style: textStyle),
        //TODO
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              hintText: "5", // Placeholder text
            ),

            keyboardType: TextInputType.number,
            // Only numbers can be entered
          ),
        ),
        Text(" minutes", style: textStyle),
      ]
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("Notifications", style: textStyle),
      Spacer(),
      //spaces the Text element and the Toggle as far from each other as possible
      ToggleSwitch()
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Text("User information", style: textStyle),
      const Spacer(),
      //spaces the Text element and the Arrow as far from each other as possible
      IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          //TODO
          /*
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
          );
          */
        },
      )
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Text("Change password", style: textStyle),
      const Spacer(),
      //spaces the Text element and the Arrow as far from each other as possible
      IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          //TODO
          /*
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ChangeUserInfo()),
          );
          */
        },
      )
    ],
  )
];

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const boxColor = Color.fromARGB(255, 183, 206, 241);
    const paddingSize = 10.0;
    const marginSize = 17.0;
    return Container(
      decoration: BoxDecoration(
        gradient: backgroundcolors(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar("Settings", context),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (final option in options)
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(143, 217, 217, 217),
                      ),
                      color: boxColor,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(paddingSize),
                  margin: EdgeInsets.all(marginSize),
                  height: 75,
                  child:
                      Padding(padding: const EdgeInsets.all(8.0), child: option),
                ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationbar(),
      ),
    );
  }
}