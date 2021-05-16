import 'package:flutter/material.dart';
import 'package:newsappindia/main file/news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsApp India',
      theme: ThemeData(primaryColor: Colors.white),
      home: home(),
    );
  }
}
