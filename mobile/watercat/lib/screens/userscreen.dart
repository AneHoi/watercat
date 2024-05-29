import 'package:flutter/material.dart';

import '../service/navigatorservice.dart';

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