import 'package:flutter/material.dart';

class CounterManager extends InheritedWidget {
  CounterManager({required this.child}) : super(child: child);
  int counter = 0;
  Widget child;
  @override
  bool updateShouldNotify(CounterManager oldWidget) {
    return oldWidget.counter != counter;
  }

  static CounterManager? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CounterManager>());
  }
}
