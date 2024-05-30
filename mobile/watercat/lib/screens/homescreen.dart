import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/backgroundgradient.dart';

import 'small_widget_helpers/navigatorbar.dart';
import 'small_widget_helpers/toggleswitch.dart';
import 'small_widget_helpers/topBar.dart';

const appTitle = 'My fountain';
bool ison = false;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        gradient: backgroundcolors(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar("Home", context),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(143, 217, 217, 217),
                  ),
                  color: const Color.fromARGB(143, 217, 217, 217),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(appTitle, style: textTheme.headlineLarge),
                      Image.asset('assets/fountain.png'),
                      const ToggleSwitch(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigationbar(),
      ),
    );
  }
}
