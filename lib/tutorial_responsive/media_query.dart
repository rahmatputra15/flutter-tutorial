import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryHome(),
    );
  }
}

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppbar = AppBar(
      title: Text("Media Query"),
      centerTitle: true,
    );
    final bodyHeight = (mediaQueryHeight - myAppbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: (isLandscape)
            ? Column(children: [
                Container(
                  height: bodyHeight * 0.5,
                  width: mediaQueryWidth * 1,
                  color: Colors.teal,
                ),
                Container(
                  height: bodyHeight * 0.5,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: Container(
                          color: Color.fromARGB(
                            Random().nextInt(256),
                            Random().nextInt(256),
                            Random().nextInt(256),
                            Random().nextInt(256),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ])
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.4,
                    width: mediaQueryWidth * 1,
                    color: Colors.teal,
                  ),
                  Container(
                    height: bodyHeight * 0.6,
                    child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text("Hallo semuanya..."),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
