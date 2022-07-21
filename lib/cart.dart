import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid/model/drinks_model.dart';

class MyCart extends StatefulWidget {
  List<drinks_model> item_list ;
  MyCart(this.item_list);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Visibility(
            visible: widget.item_list.length == 0,
            child: Center(
              child: (Text(
                "your cart is now an empty",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Visibility(
            visible: widget.item_list.length > 0,
              child: ListView.builder(
            itemBuilder: (context, index) {
              drinks_model currentItem = widget.item_list[index];
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  leading: Image.asset(currentItem.item_image),
                  title: Text(currentItem.item_name),
                  subtitle: Row(
                    children: [
                      ElevatedButton(
                          onPressed: null, child: Icon(Icons.remove)),
                      Text(currentItem.item_count.toString()),
                      ElevatedButton(onPressed: null, child: Icon(Icons.add)),
                    ],
                  ),
                  trailing: Text(currentItem.item_amount),
                ),
              );
            },
            itemCount: widget.item_list.length,
          ))
        ],
      ),
    );
  }
}
