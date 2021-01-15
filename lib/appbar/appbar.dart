import 'package:flutter/material.dart';

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyAppBarDemo extends StatelessWidget {
  MyAppBarDemo({Key key}) : super(key: key);

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
                  final SnackBar snackBar = const SnackBar(
                      content: Text(
                          'Subscribe and get more on Flutter Programming'));
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
    );
  }
}
