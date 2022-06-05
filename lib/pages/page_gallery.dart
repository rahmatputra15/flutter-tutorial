import './page_photo.dart';
import 'package:flutter/material.dart';

class PageGallery extends StatelessWidget {
  static const nameRoute = '/galleries';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page Gallery"),
        // leading: Container(),
      ),
      body: Center(
        child: Text("Body Page Gallery"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(PagePhoto.nameRoute);
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
