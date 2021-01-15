import 'package:flutter/material.dart';
import '2-basic-widgets/BasicWidgets.dart';
import '3-materialapp-scaffold-demo/MaterialAppSacffold.dart';
import '4-appbar/appbar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Tech Talks With AK';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      // home: MyAppBarDemo(),
      home: MaterialAppScaffold(),
    );
  }
}