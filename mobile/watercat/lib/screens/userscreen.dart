import 'package:flutter/material.dart';

import 'small_widget_helpers/navigatorbar.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("User")
        ),
        bottomNavigationBar: const BottomNavigationbar(),
    );
  }
}