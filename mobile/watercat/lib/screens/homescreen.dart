import 'package:flutter/material.dart';

import '../service/navigatorservice.dart';

const appTitle = 'Photos';
const appDescription =
    "This is a small app I wrote for my Mobile Programming class."
    "It demonstrates how to navigate between screens and use camera.";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(appTitle, style: textTheme.headlineLarge),
              const Divider(),
              const Spacer(),
              Text(appDescription, style: textTheme.bodyLarge),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationbar(),
    );
  }
}
