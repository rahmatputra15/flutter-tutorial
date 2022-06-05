import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.blueGrey,
    Colors.blue,
    Colors.amber,
    Colors.green,
    Colors.red
  ];

  final List<Widget> myList = [
    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.blue[300],
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.amber,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.green,
    ),
  ];

  final List<Widget> myListNumber = List.generate(
    50,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 20 + double.parse(index.toString()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: myListNumber,
          // ListView.separated(...) untuk menyisip diantara listview
          // separatorBuilder: (context, index) {
          //   return Container(
          //     height: 10,
          //   );
          // },
          // ListView.builder(...) hanya untuk listview dibawah ini
          // itemCount: myColor.length,
          // itemBuilder: (context, index) {
          //   return Container(
          //     height: 150,
          //     width: 200,
          //     color: myColor[index],
          //   );
          // },
          // scrollDirection: Axis.horizontal,
          // children: myList,
        ),
      ),
    );
  }
}
