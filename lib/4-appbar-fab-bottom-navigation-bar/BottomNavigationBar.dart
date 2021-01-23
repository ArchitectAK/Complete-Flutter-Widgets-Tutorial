import 'package:flutter/material.dart';

final SnackBar snackBar = const SnackBar(
    content: Text('Subscribe and get more on Flutter Programming'));

class BottomNavigationDemo extends StatefulWidget {
  BottomNavigationDemo({Key key}) : super(key: key);

  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          'Tech Talks With AK',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellowAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School'
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
