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
      home: FlexibleExpandedHome(),
    );
  }
}

class FlexibleExpandedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flexible & Expanded"),
      ),
      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         child: Center(
      //           child: Text("Pertama - Text 1"),
      //         ),
      //         height: 100,
      //         width: 50,
      //         color: Colors.amber,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         child: Center(
      //           child: Text("Text 2"),
      //         ),
      //         height: 100,
      //         color: Colors.teal,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         child: Center(
      //           child: Text("Text 3"),
      //         ),
      //         height: 100,
      //         width: 50,
      //         color: Colors.purple,
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 80,
              child: Container(
                color: Colors.teal,
              ),
            ),
            Container(
              color: Colors.red,
              height: 60,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Center(
                          child: Text("Pertama - Text 1"),
                        ),
                        color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Center(
                          child: Text("Text 2"),
                        ),
                        color: Colors.teal[200],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Center(
                          child: Text("Text 3"),
                        ),
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
