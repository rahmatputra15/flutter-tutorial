import 'package:flutter/cupertino.dart';

class Product {
  @required
  String? judul;
  @required
  int? harga;
  @required
  String? imageUrl;
  @required
  String? desc;

  Product(this.judul, this.harga, this.imageUrl, this.desc);
}
