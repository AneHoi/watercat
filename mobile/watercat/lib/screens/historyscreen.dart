import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return getLayout(HistoryContent(), "History", context);
  }
}

class HistoryContent extends StatelessWidget {
  const HistoryContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                    Container(
                        constraints: BoxConstraints(minWidth: 100, maxWidth: 300, maxHeight: 150),
                        child: Image.asset('assets/fountain.png')),
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