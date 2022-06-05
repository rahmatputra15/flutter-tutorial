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
      home: LayoutBuilderHome(),
    );
  }
}

class LayoutBuilderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      centerTitle: true,
      title: Text("Layout Builder"),
    );

    final heightBody =
        heightDevice - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthDevice,
        height: heightBody * 0.3,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthDevice),
            MyContainer(widthDevice),
            MyContainer(widthDevice),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  double widthDevice;
  MyContainer(this.widthDevice);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthDevice * 0.3,
          height: constraints.maxHeight * 0.9,
          color: Colors.amberAccent,
        );
      },
    );
  }
}
