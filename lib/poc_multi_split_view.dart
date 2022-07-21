import 'package:flutter/material.dart';

List<Widget> gridChild = [
  Container(
    margin: EdgeInsets.all(8.0),
    width: 30.0,
    height: 50.0,
    color: Colors.green,
  ),
  Container(
    margin: EdgeInsets.all(8.0),
    width: 30.0,
    height: 50.0,
    color: Colors.green,
  ),
  Container(
    margin: EdgeInsets.all(8.0),
    width: 30.0,
    height: 50.0,
    color: Colors.green,
  ),
  Container(
    margin: EdgeInsets.all(8.0),
    width: 30.0,
    height: 50.0,
    color: Colors.green,
  ),
  Container(
    margin: EdgeInsets.all(8.0),
    width: 30.0,
    height: 50.0,
    color: Colors.green,
  ),
];

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            gridChild.add(Container(
              margin: EdgeInsets.all(8.0),
              width: 30.0,
              height: 50.0,
              color: Colors.green,
            ));
            print(gridChild.length);
          });
        },
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: gridChild,
        ),
      ),
    );
  }
}
