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
          leading: Container(
            child: Icon(Icons.menu),
          ),
          centerTitle: true,
          title: Container(
            child: Text("AppBar Widget"),
          ),
          titleSpacing: 0,
          actions: [
            Container(
              width: 60,
              child: Icon(Icons.search),
            ),
          ],
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 50,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.pink],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
          // flexibleSpace: Container(
          //   height: 50,
          //   color: Colors.green[400],
          // ),
        ),
        body: Center(
          child: Text(
            "This Time " + DateFormat.j('en_US').format(DateTime.now()),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
