import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  List<Tab> myTabs = [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.people),
    ),
    Tab(
      icon: Icon(Icons.settings),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[400],
            centerTitle: true,
            title: Text("My TabBar Widget"),
            bottom: TabBar(
              // preferredSize: Size.fromHeight(50),
              // child: DefaultTabController(
              // length: 3,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white54,
              indicator: BoxDecoration(
                // color: Colors.amber,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
              tabs: myTabs,
              // ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
