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
      home: Theme(),
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.comfortable,
        // primarySwatch: Colors.teal,
        // primarySwatch: MaterialColor(
        //   0xFFF5E0C3,
        //   <int, Color>{},
        // ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.teal.withOpacity(0.2),
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontFamily: "OleoScriptSwashCaps",
          ),
        ),
      ),
    );
  }
}

class Theme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Theme"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a text",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "This is a text",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Button",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
