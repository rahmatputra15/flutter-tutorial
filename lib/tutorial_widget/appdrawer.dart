import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDashboard(),
    );
  }
}

class MyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App Drawer"),
        backgroundColor: Colors.teal[300],
      ),
      body: Center(
        child: Text(
          "Page Dashboard",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.teal[300],
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Menu Utama",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MyDashboard(),
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.teal[900],
              ),
              title: Text(
                "Beranda",
                style: TextStyle(
                  color: Colors.teal[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MySetting(),
                ),
              ),
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
          ],
        ),
      ),
    );
  }
}

class MySetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App Drawer"),
        backgroundColor: Colors.teal[300],
      ),
      body: Center(
        child: Text(
          "Page Setting",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.teal[300],
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Menu Utama",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MyDashboard(),
                ),
              ),
              leading: Icon(Icons.home),
              title: Text("Beranda"),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MySetting(),
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.teal[900],
              ),
              title: Text(
                "Setting",
                style: TextStyle(
                  color: Colors.teal[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
