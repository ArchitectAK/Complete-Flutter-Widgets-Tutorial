import 'package:flutter/material.dart';

final SnackBar snackBar = const SnackBar(
    content: Text("Subscribe to get more on Flutter Programming"));

class AppBarFABDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Talks"),
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
      body: const Center(
        child: Text("Welcome to Flutter Tutorial"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          // On press
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
