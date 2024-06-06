
import 'package:flutter/material.dart';

import '../settingsscreen.dart';
final textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white
);
AppBar buildAppBar(String pagename, BuildContext context) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
          pagename,
          style: textStyle
      ),
    ),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromRGBO(0, 86, 215, 1.0),
              Color.fromRGBO(148, 174, 214, 1.0),
            ]),
      ),
    ),
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
        ),
      ),
    ],
  );
}
