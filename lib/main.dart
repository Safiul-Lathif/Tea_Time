import 'package:flutter/material.dart';
import 'package:grid/cart.dart';
import 'package:grid/gridView.dart';
import 'package:grid/model/drinks_model.dart';

void main() => runApp(MultiSplitViewExampleApp());

class MultiSplitViewExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MultiSplitViewExample(),
    );
  }
}

class MultiSplitViewExample extends StatefulWidget {
  List<drinks_model> emptyList = [];
  @override
  _MultiSplitViewExampleState createState() => _MultiSplitViewExampleState();
}

class _MultiSplitViewExampleState extends State<MultiSplitViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: MyHomePage(),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: MyCart(widget.emptyList),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 15.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('safi'),
              accountEmail: Text('safi123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('xyz'),
              ),
            ),
            ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.add_chart_rounded),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('My wishlist'),
              leading: Icon(Icons.list),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('My favourites'),
              leading: Icon(Icons.favorite),
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),
    );
  }
}
