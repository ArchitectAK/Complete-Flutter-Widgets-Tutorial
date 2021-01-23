import 'package:flutter/material.dart';
import '2-basic-widgets-appbar/BasicWidgets.dart';
import '3-materialapp-scaffold-demo/MaterialAppSacffold.dart';
import '4-appbar-fab-bottom-navigation-bar/AppBarFABDemo.dart';
import '4-appbar-fab-bottom-navigation-bar/BottomNavigationBar.dart';
import '5-container/ContainerDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Tech Talks With AK';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      // home: BasicWidgets(),
      //  home: MaterialAppScaffold(),
      //  home: AppBarFABDemo(),
      // home: BottomNavigationDemo(),
       home: ContainerDemo(),
    );
  }
}
