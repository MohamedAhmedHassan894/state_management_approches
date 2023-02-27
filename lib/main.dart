import 'package:flutter/material.dart';
import 'package:state_managements/inheritedwidget/counter_manager.dart';
import 'inheritedwidget/pages/home.dart';
import 'products_inheritedwidget/pages/products.dart';
import 'products_inheritedwidget/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProductsProvider(
      child: MaterialApp(
        title: 'State Management Approaches',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: HomeInheritedWidget(),
        home: Products(),
      ),
    );
  }
}
