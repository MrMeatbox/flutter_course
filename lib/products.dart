import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products([this.products = const []]) {
    print("[Product widget] Constructor");
  }
  @override
  Widget build(BuildContext context) {
    print("[Product widget] build()");
    // TODO: implement build
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/foods.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
