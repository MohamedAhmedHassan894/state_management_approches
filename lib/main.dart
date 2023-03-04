import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/inheritedwidget/counter_manager.dart';
import 'package:state_managements/provider/counter_provider.dart';
import 'inheritedwidget/pages/home.dart';
import 'products_inheritedwidget/pages/products.dart';
import 'products_inheritedwidget/products_provider.dart';
import 'provider/counter.dart';
import 'provider/home.dart';
import 'provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return

        // ProductsProvider(
        // child:

        //   ChangeNotifierProvider<CounterProvider>(
        // create: (context) => CounterProvider(),
        // child:
        MaterialApp(
      title: 'State Management Approaches',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeInheritedWidget(),
      home: ListenableProvider(
        create: (context) => UserModel('Ahmed', 22),
        child:  Home(),
      ),
      // ),
      // ),
    );
  }
}
