import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Forgetpass_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quên Mật Khẩu'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Gửi Yêu Cầu'),
          ),
        ),
      ]),
    );
  }
}
