import 'package:flutter/material.dart';
import 'appbar/appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Tech Talks With AK';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyAppBarDemo(),
    );
  }
}