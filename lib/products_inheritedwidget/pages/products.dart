import 'package:flutter/material.dart';
import 'package:state_managements/products_inheritedwidget/pages/cart.dart';
import 'package:state_managements/products_inheritedwidget/products_provider.dart';
import '../product.dart';

class Products extends StatelessWidget {
  Products({Key? key}) : super(key: key);
  List<Product> products = List.generate(
    100,
    (index) => Product(
      'product num $index',
      index,
      false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    var cart = ProductsProvider.of(context);
    return SafeArea(
      child: StatefulBuilder(
        builder: (context, setState) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Products'),
            actions: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Cart(),
                          ));
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                    ),
                  ),
                  Positioned(
                    top: -3,
                    right: 8,
                    child: Text(
                      '${cart!.products.length}',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                products[index].name,
              ),
              subtitle: Text(
                '${products[index].price}\$',
              ),
              trailing: Checkbox(
                value: products[index].isChecked,
                onChanged: (checked) {
                  setState(() {
                    products[index].isChecked = !products[index].isChecked;
                  });
                  if (cart.products.contains(products[index])) {
                    cart.products.remove(products[index]);
                  } else {
                    cart.products.add(products[index]);
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
