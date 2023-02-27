import 'package:flutter/material.dart';
import 'package:state_managements/inheritedwidget/counter_manager.dart';
import 'inheritedwidget/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CounterManager(
      child: MaterialApp(
        title: 'State Management Approaches',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeInheritedWidget(),
      ),
    );
  }
}
