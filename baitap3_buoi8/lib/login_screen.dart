import 'dart:ui';

import 'package:baitap3_buoi8/forget_password.dart';
import 'package:baitap3_buoi8/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng Nhập'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: controllerUser,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: controllerPass,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
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
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Register_Screen())),
                    );
                  },
                  child: const Text(
                    'Đăng Ký',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                if ((controllerUser.text.trim() == '') &&
                    (controllerPass.text.trim() != '')) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Thiếu UserName'),
                          content: Text('Nhập UserName đi Mày!!! '),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Lẹ Lên'))
                          ],
                        );
                      });
                }

                if ((controllerUser.text.trim() != '') &&
                    (controllerPass.text.trim() == '')) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Thiếu PassWord'),
                          content: Text('Nhập PassWord đi Mày!!! '),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Nhanh'))
                          ],
                        );
                      });
                }
                if ((controllerUser.text.trim() == '') &&
                    (controllerPass.text.trim() == '')) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Thiếu UserName And PassWord'),
                          content:
                              Text('Nhập UserName And PassWord đi Mày!!! '),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Lẹ'))
                          ],
                        );
                      });
                }

                if (((controllerUser.text.trim() ==
                        controllerPass.text.trim())) &&
                    ((controllerUser.text.trim() != '') &&
                        (controllerUser.text.trim() != ''))) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Đăng Nhập'),
                          content:
                              Text('Chúc Mừng Bạn Đã Đăng Nhập Thành Công'),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'))
                          ],
                        );
                      });
                }

                if (((controllerUser.text.trim() !=
                        controllerPass.text.trim())) &&
                    ((controllerUser.text.trim() != '') &&
                        (controllerUser.text.trim() != ''))) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('congratulations'),
                          content: Text(
                              'Chúc Mừng Bạn Đã Đăng Nhập Không Thành Công'),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'))
                          ],
                        );
                      });
                }
              },
              child: const Text('Đăng Nhập'),
            ),
          ),
        ],
      ),
    );
  }
}
