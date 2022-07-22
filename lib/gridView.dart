import 'package:flutter/material.dart';
import 'package:grid/model/drinks_model.dart';

import 'main.dart';

class MyHomePage extends StatefulWidget {
  final void Function(List<drinks_model>) refreshCallBack;
  MyHomePage(this.refreshCallBack, {Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MultiSplitViewExample mainViewPage = MultiSplitViewExample();
  List<drinks_model> dm_list = <drinks_model>[];
  int item_count = 0;
  int item_count1 = 0;
  int item_count2 = 0;
  int item_count3 = 0;
  int item_count4 = 0;
  int item_count5 = 0;
  int item_count6 = 0;
  int item_count7 = 0;
  int item_count8 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "Food Items",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 248, 245, 245),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView(
            children: [
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage(
                          "image/download.jpeg",
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Heart Cofee",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$7.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count++;

                    drinks_model dm = drinks_model("\$7.00",
                        "image/download.jpeg", "Heart Cofee", item_count);
                    mainViewPage.emptyList.add(dm);
                    // MyCart(mainViewPage.emptyList);
                    widget.refreshCallBack(mainViewPage.emptyList);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(1).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Black Cofee",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$5.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count1++;
                    drinks_model dm = drinks_model("\$5.00",
                        "image/download(1).jpeg", "Black Cofee", item_count1);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(2).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Chocolate Cofee",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$10.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count2++;
                    drinks_model dm = drinks_model(
                        "\$10.00",
                        "image/download(2).jpeg",
                        "Chocolate Cofee",
                        item_count2);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(3).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Green Tea",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$8.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count3++;
                    drinks_model dm = drinks_model("\$8.00",
                        "image/download(3).jpeg", "Green Tea", item_count3);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(4).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Cupertino Cofee",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$11.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count4++;
                    drinks_model dm = drinks_model(
                        "\$11.00",
                        "image/download(4).jpeg",
                        "Cupertino Cofee",
                        item_count4);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(5).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "IceCream",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$10.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count5++;
                    drinks_model dm = drinks_model("\$10.00",
                        "image/download(5).jpeg", "IceCream", item_count5);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(6).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Coffea Arabica",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$16.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count6++;
                    drinks_model dm = drinks_model(
                        "\$16.00",
                        "image/download(6).jpeg",
                        "Coffea Arabica",
                        item_count6);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(7).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Lemon Tea",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$7.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count7++;
                    drinks_model dm = drinks_model("\$7.00",
                        "image/download(7).jpeg", "Lemon Tea", item_count7);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      width: 225,
                      child: Image(
                        image: AssetImage("image/download(8).jpeg"),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 13,
                          color: Colors.green,
                        ),
                        Text(
                          "Cofee",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '\$8.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    item_count8++;
                    drinks_model dm = drinks_model("\$8.00",
                        "image/download(8).jpeg", "Cofee", item_count8);
                    mainViewPage.emptyList.add(dm);
                  });
                },
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ),
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
