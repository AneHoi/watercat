import 'package:flutter/material.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return getLayout(UserContent(), "User page", context);
  }
}

class UserContent extends StatelessWidget {
  const UserContent({
    super.key,
  });

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
                  color: getBoxColorLight(),
                ),
                color: getBoxColorLight(),
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
                        constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
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