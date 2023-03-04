import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/provider/counter_provider.dart';
import 'package:state_managements/provider/second_screen.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<CounterProvider>(
          builder: (context, myCounter, child) => Text(
            myCounter.counter.toString(),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, myCounter, child) => Text(
                myCounter.counter.toString(),
              ),
            ),
            Consumer<CounterProvider>(
              builder: (context, myCounter, child) => IconButton(
                onPressed: () {
                  myCounter.increment();
                },
                icon: const Icon(
                  Icons.add,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SecondScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.navigation_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
