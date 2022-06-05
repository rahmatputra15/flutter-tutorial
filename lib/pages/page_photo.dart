import 'package:flutter/material.dart';

class PagePhoto extends StatelessWidget {
  static const nameRoute = '/photos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page Photo"),
        // leading: Container(),
      ),
      body: Center(
        child: Text("Body Page Photo"),
      ),
    );
  }
}
