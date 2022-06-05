import 'package:flutter/material.dart';
import '../pages/page_home.dart';
import '../pages/page_gallery.dart';
import '../pages/page_photo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        PageGallery.nameRoute: (context) => PageGallery(),
        PagePhoto.nameRoute: (context) => PagePhoto(),
      },
    );
  }
}
