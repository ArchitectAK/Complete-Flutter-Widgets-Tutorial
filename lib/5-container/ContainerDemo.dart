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
            // color: Colors.green,
              padding: EdgeInsets.all(8.0),
              // constraints: BoxConstraints.expand(),
              // constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
              alignment: Alignment.center,
              // alignment: Alignment.centerLeft,
              // transform: Matrix4.rotationZ(0.5),
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                // color: Colors.blue,
                  border: Border.all(color: Colors.black,
                      width: 2.0,
                      style: BorderStyle.solid),
                  // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4.0,
                      spreadRadius: 2.0,
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.red,
                        Colors.blue,
                      ]),
                  shape: BoxShape.circle
              ),
              child: Text(
                "Flutter Tutorial",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ));
  }
}
