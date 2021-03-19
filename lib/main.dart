/// File: main.dart
/// Created by Aleksandr Mishanov
/// 18.03.2021, 22:45:33

import 'package:ascapp/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ASCAPP Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainPage(),
    );
  }
}