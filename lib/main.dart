import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF221F20),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Splash Demo'),
        ),
        body: Center(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}
