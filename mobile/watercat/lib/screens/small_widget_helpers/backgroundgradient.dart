import 'package:flutter/material.dart';

LinearGradient backgroundcolors() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(0, 45, 113, 1.0),
      Color.fromRGBO(148, 174, 214, 1.0),
    ],
  );
}