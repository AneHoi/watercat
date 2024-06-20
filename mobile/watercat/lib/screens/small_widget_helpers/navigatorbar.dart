import 'package:flutter/material.dart';
import 'package:watercat/screens/loginscreen.dart';

import '../historyscreen.dart';
import '../homescreen.dart';
import '../userscreen.dart';

class MenuItem {
  late String name;
  late Widget Function({Key? key}) screen;
  late IconData icon;

  MenuItem({required this.name, required this.screen, required this.icon});
}

var menu = <MenuItem>[
  MenuItem(name: "Home", screen: HomeScreen.new, icon: Icons.home),
  MenuItem(
      name: "History", screen: HistoryScreen.new, icon: Icons.calendar_month),
  MenuItem(name: "User", screen: UserScreen.new, icon: Icons.person),
  MenuItem(name: "log", screen: LoginScreen.new, icon: Icons.login)
];

class BottomNavigationbar extends StatelessWidget {
  static const double radius = 50;

  _onMenuTap(BuildContext context, Widget Function({Key? key}) constructor) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => constructor.call()),
    );
  }

  const BottomNavigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: const Color.fromRGBO(0, 86, 215, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for (final item in menu)
                Expanded(
                  child: IconButton(
                      icon: Icon(item.icon),
                      color: Colors.white,
                      onPressed: () {
                        _onMenuTap(context, item.screen);
                      }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
