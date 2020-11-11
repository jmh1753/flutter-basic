import 'package:flutter/material.dart';
import 'package:navigator2/ScreenA.dart';
import 'package:navigator2/ScreenB.dart';
import 'package:navigator2/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigator2',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
