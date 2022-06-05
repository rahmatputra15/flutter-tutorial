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
      home: MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget {
  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Switch"),
        backgroundColor: Colors.teal[400],
      ),
      body: Center(
        child: Column(
          children: [
            Switch.adaptive(
              value: statusSwitch,
              activeColor: Colors.teal[400],
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                });
              },
            ),
            Text((statusSwitch == false) ? "Switch Off" : "Switch On"),
          ],
        ),
      ),
    );
  }
}
