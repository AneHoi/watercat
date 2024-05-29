import 'package:flutter/material.dart';
import 'package:watercat/screens/userscreen.dart';

import 'screens/historyscreen.dart';
import 'screens/homescreen.dart';
import 'service/navigatorservice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watercat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomeScreen(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WaterCat'),
          ),
          body: HomeScreen(),
          bottomNavigationBar: const BottomNavigationbar(),
        ),
      ),
    );
  }
}
