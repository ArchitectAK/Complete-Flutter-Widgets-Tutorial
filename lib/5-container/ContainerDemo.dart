import 'package:flutter/material.dart';

final SnackBar snackBar = const SnackBar(
    content: Text("Subscribe to get more on Flutter Programming"));

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tech Talks With AK"),
          actions: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: "Show Snackbar",
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                );
              },
            ),
          ],
        ),
        body: Center(
          child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(8.0),
              constraints: BoxConstraints.expand(),
              // constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
              alignment: Alignment.center,
              child: Text(
                "Welcome to Flutter Tutorial",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ));
  }
}
