import 'package:baitap3_buoi8/login_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(Bai08App());

class Bai08App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Đơn Giản',
      home: LoginScreen(), //bo sung 1
    );
  }
}
