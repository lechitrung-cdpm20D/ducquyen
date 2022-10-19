import 'package:baitap3_buoi8/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng Ký'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Forgetpass_Screen()),
                  ),
                );
              },
              child: const Text(
                'Quên Mật Khẩu',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
