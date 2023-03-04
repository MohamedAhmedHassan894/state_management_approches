import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/provider/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (_, CounterProvider myCounter, __) => Text(
            myCounter.counter.toString(),
          ),
        ),
      ),
    );
  }
}
