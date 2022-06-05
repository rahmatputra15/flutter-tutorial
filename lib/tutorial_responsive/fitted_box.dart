import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FittedBoxHome(),
    );
  }
}

class FittedBoxHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Fitted Box"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 100,
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.cover,
            child: Image.network("http://picsum.photos/200/300"),
          ),
        ),
      ),
    );
  }
}
