import 'package:flutter/material.dart';
import 'package:state_managements/inheritedwidget/pages/second_page.dart';
import '../counter_manager.dart';

class HomeInheritedWidget extends StatelessWidget {
  const HomeInheritedWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var provider = CounterManager.of(context);
    return Scaffold(
      body: StatefulBuilder(builder:
          (BuildContext context, void Function(void Function()) setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      provider!.counter++;
                    });
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
                Text(
                  '${provider!.counter}',
                  style: Theme.of(context).textTheme.headline6,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      provider.counter--;
                    });
                  },
                  child: const Icon(
                    Icons.minimize,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              focusColor: Colors.blueAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SecondPage(),
                  ),
                );
              },
              child: const Text(
                'Second Page',
              ),
            ),
          ],
        );
      }),
    );
  }
}
