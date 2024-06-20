import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import 'small_widget_helpers/toggleswitch.dart';

const textStyle = TextStyle(fontSize: 20);

var options = <Row>[
  const Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Keep turned on for: ", style: textStyle),
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
      const Text("User information", style: textStyle),
      const Spacer(),
      //spaces the Text element and the Arrow as far from each other as possible
      IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          //TODO

        },
      )
    ],
  ),
];

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const boxColor = Color.fromARGB(255, 183, 206, 241);
    const paddingSize = 10.0;
    const marginSize = 17.0;
    return getLayout(SettingContent(boxColor: boxColor, paddingSize: paddingSize, marginSize: marginSize), "Settings", context);
  }
}

class SettingContent extends StatelessWidget {
  const SettingContent({
    super.key,
    required this.boxColor,
    required this.paddingSize,
    required this.marginSize,
  });

  final Color boxColor;
  final double paddingSize;
  final double marginSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (final option in options)
              Container(
                constraints: BoxConstraints(maxWidth: 800),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: getBoxColorLight(),
                    ),
                    color: boxColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(paddingSize),
                margin: EdgeInsets.all(marginSize),
                height: 75,
                child:
                    Padding(padding: const EdgeInsets.all(8.0), child: option),
              ),
          ],
        ),
      ),
    );
  }
}
