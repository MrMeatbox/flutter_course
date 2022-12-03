import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print("[ProductManager widget] Constructor");
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("[ProductManager widget] CreateState()");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    print("[ProductManager State] initstate()");
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("[ProductManager State] didUpdatewidget()");
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  _ProductManagerState();
  @override
  Widget build(BuildContext context) {
    print("[ProductManager State] build()");
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          // color: Theme.of(context).primaryColor,
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
