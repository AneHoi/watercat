import 'package:flutter/material.dart';

import '../service/navigatorservice.dart';

const appTitle = 'My fountain';
bool ison = false;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final gradient = LinearGradient(colors: [
      Color.fromRGBO(255, 255, 255, 1.0),
      Color.fromRGBO(151, 137, 137, 1.0)
    ]);
    final textstyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white
    );
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 45, 113, 1.0),
            Color.fromRGBO(148, 174, 214, 1.0),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Home',
                  style: textstyle
                  ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Color.fromRGBO(0, 86, 215, 1.0),
                    Color.fromRGBO(148, 174, 214, 1.0),
                  ]),
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Open settings')));
                },
              ),
            ),
          ],
        ),
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
                      const SwitchExample()
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

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool ison = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: ison,
      activeTrackColor: const Color.fromRGBO(89, 121, 238, 1.0),
      activeColor: const Color.fromRGBO(255, 255, 255, 1.0),

      inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1.0),
      inactiveThumbColor: const Color.fromRGBO(0, 0, 0, 1.0),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          ison = value;
        });
      },
    );
  }
}
