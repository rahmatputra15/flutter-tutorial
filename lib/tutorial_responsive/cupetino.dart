import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHome(),
    );
  }
}

class CupertinoHome extends StatelessWidget {
  const CupertinoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cupetino"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Platform.isIOS
                    ? CupertinoAlertDialog(
                        title: Text("Delete Item"),
                        content: Text("Are you sure?"),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text("No"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Yes"),
                          ),
                        ],
                      )
                    : AlertDialog(
                        title: Text("Delete Item"),
                        content: Text("Are you sure?"),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text("No"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Yes"),
                          ),
                        ],
                      );
              },
            );
          },
          child: Text("Alert Dialog"),
        ),
      ),
    );
  }
}
