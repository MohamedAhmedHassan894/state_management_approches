import 'package:flutter/material.dart';
import 'product.dart';

class ProductsProvider extends InheritedWidget {
  ProductsProvider({required this.child}) : super(child: child);
  Widget child;
  List<Product> products = [];
  @override
  bool updateShouldNotify(ProductsProvider oldWidget) {
    return oldWidget.products.length != products.length;
  }

 static ProductsProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ProductsProvider>();
}
