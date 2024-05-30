import 'package:flutter/material.dart';

import 'small_widget_helpers/navigatorbar.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("History")
        ),
      bottomNavigationBar: const BottomNavigationbar(),
    );
  }
}