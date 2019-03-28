import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  ProductsManager({this.startingProduct});
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(String products) {
    setState(() {
      _products.add(products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
        Products(_products)
      ],
    );
  }
}
