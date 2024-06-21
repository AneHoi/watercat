import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watercat/screens/historyscreen.dart';

import 'broardcastwschannel.dart';
import 'screens/homescreen.dart';
import 'screens/loginscreen.dart';

void main() {
  Uri wsUrl;

  if (kIsWeb) {
    wsUrl = Uri.parse('ws://localhost:8080');
  } else if (Platform.isAndroid) {
    wsUrl = Uri.parse('ws://10.0.2.2:8181');
  } else {
    throw UnimplementedError('This platform is not supported');
  }
  final broadcastChannel = BroadcastWsChannel(wsUrl);
  runApp(Provider<BroadcastWsChannel>.value(
      value: broadcastChannel, child: const MyApp()));
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
      home: const LoginScreen(),
    );
  }
}
