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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Image Flutter"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/image1.jpg"),
              // image: NetworkImage("https://picsum.photos/200/300"),
            ),
          ),
        ),
      ),
    );
  }
}
