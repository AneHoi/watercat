import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import 'small_widget_helpers/toggleswitch.dart';

const appTitle = 'My fountain';
bool ison = false;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return getLayout(HomeContent(textTheme: textTheme), "Home", context);
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 800),
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
                    Container(
                        constraints:
                            BoxConstraints(minWidth: 100, maxWidth: 300),
                        child: Image.asset('assets/fountain.png')),
                    const ToggleSwitch(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
