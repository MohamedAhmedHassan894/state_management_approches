import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/provider/user_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'extension methods',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Widget1(),
            SizedBox(
              height: 10,
            ),
            Widget2(),
          ],
        ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var name = context.select((UserModel userModel) => userModel.name);
    var user=Provider.of<UserModel>(context,listen: false);
    print('widget1 called');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
             user.changeName();
          },
          icon: const Text(
            'change name',
          ),
        ),
        Center(
          child: Text(
           name,
          ),
        ),
      ],
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var age = context.select((UserModel userModel) => userModel.age);
   var user= Provider.of<UserModel>(context,listen: false);
    print('widget2 called');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(age.toString()),
        ),
        IconButton(
          onPressed: () {
          user.increment();
          },
          icon: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
