import 'package:faker/faker.dart';
import 'package:first_flutter/models/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class HomePageModel extends StatelessWidget {
  Faker faker = Faker();
  final formatUang = new NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(20, (index) {
      return Product(
        faker.food.restaurant(),
        10000 + Random().nextInt(100000),
        "http://picsum.photos/id/$index/200",
        faker.lorem.sentence(),
      );
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Modal"),
        backgroundColor: Colors.teal[400],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: dummyData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageUrl.toString()),
            footer: Container(
              color: Colors.teal.withOpacity(0.6),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dummyData[index].judul.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Rp " + formatUang.format(dummyData[index].harga),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
