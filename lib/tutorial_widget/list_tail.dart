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
          title: Text("List Tail"),
        ),
        body: ListView(
          children: [
            ListTile(
              // contentPadding: EdgeInsets.all(30),
              title: Text("Rahmat Putra"),
              subtitle: Text("Haloo ini adalah pesan saya", maxLines: 2),
              leading: CircleAvatar(),
              trailing: Text("10:10 PM"),
              onTap: () {
                return;
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Setya Patrianti"),
              subtitle: Text(
                "Haloo ini adalah pesan saya juga, segera di balas dong yaa...",
                maxLines: 2,
              ),
              leading: CircleAvatar(),
              trailing: Text("10:13 PM"),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Gibran Yusuf"),
              subtitle: Text("Haloo saya ikutan juga dong", maxLines: 2),
              leading: CircleAvatar(),
              trailing: Text("10:18 PM"),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
