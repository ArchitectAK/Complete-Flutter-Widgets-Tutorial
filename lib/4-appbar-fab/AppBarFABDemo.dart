import 'package:flutter/material.dart';



final SnackBar snackBar = const SnackBar(
    content: Text(
        'Subscribe and get more on Flutter Programming'));

/// This is the stateless widget that the main application instantiates.
class AppBarFABDemo extends StatelessWidget {
  AppBarFABDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is AppBar'),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Subscribe Snackbar',
                onPressed: () {
                  Scaffold.of(context).showSnackBar(snackBar);
                },
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Flutter Programming',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.next_plan),
        backgroundColor: Colors.green,
        onPressed: () {
          // onPress action
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
