import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text("Tech Talks With AK",
                style: Theme.of(context).primaryTextTheme.headline6),
          ),
          Expanded(
              child: Center(
                child: Text(
                    "Subscribe this channel to get more interesting technical videos"),
              ))
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[800]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: null,
            tooltip: "back",
            disabledColor: Colors.white,
          ),
          Expanded(child: title),
          IconButton(
            icon: Icon(Icons.cast),
            onPressed: null,
            tooltip: "back",
            disabledColor: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: "back",
            disabledColor: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
            tooltip: "back",
            disabledColor: Colors.white,
          ),
        ],
      ),
    );
  }
}