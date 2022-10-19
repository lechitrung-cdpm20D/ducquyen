import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
            height: 5,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return childWidget(sttext: index.toString());
          },
        ),
      ),
    );
  }
}

class childWidget extends StatelessWidget {
  childWidget({Key? key, required this.sttext}) : super(key: key);
  String sttext;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Card(
            elevation: 10,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(
                child: Text(sttext),
              ),
              title: Text('Le Chi Trung-$sttext'),
              subtitle: Text('sdt-$sttext'),
              trailing: Icon(Icons.more_horiz),
            )));
  }
}
