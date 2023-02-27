import 'package:flutter/material.dart';

import '../products_provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = ProductsProvider.of(context);
    return Scaffold(
      body: Center(
        child: Text('Cart Count is ${cart!.products.length}'),
      ),
    );
  }
}
