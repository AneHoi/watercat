
import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/topBar.dart';

import 'backgroundgradient.dart';
import 'navigatorbar.dart';

Widget getLayout(Widget content, String screenTitle, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: backgroundcolors(),
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: buildAppBar(screenTitle, context),
      body: content,
      bottomNavigationBar: const BottomNavigationbar(),
    ),
  );
}

Widget getCenterBox(Widget content, bool lightMode){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 800),
          decoration: BoxDecoration(
              border: Border.all(
                color: lightMode ? getBoxColorLight() : getBoxColorDark(),
              ),
              color: lightMode ? getBoxColorLight() : getBoxColorDark(),
              borderRadius: const BorderRadius.all(Radius.circular(40))),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: content
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


Color getBoxColorLight(){
  return Color.fromARGB(143, 217, 217, 217);
}
Color getBoxColorDark(){
  return Color.fromARGB(66, 0, 0, 0);
}

Color getWhiteColor(){
  return Color.fromRGBO(255, 255, 255, 1.0);
}