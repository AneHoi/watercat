
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