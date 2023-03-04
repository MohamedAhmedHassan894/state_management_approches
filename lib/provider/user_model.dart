import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  String name;
  int age;
  UserModel(this.name, this.age);
  increment() {
    age++;
    notifyListeners();
  }

  changeName() {
    name = 'Aly';
    notifyListeners();
  }
}
