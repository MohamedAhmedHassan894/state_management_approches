import 'package:flutter/material.dart';
import '../counter_manager.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var provider = CounterManager.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          provider!.counter.toString(),
        ),
      ),
    );
  }
}
