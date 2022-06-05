import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Date Format"),
        ),
        body: Center(
          child: Text(
            "This Date " + DateFormat.j('en_US').format(DateTime.now()),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
