import 'package:flutter/material.dart';


class ProductModel {
  final String image;
  final String description;
  final String title;
  final String price;
  final String rating;

  ProductModel(this.title, this.price, this.rating, this.image, this.description);
}

List <ProductModel> products = [
  ProductModel('The Dark Knight', '19', '9.0/10', 'assets/onward.jpeg',
      'A man falls in love not knowing it is he death'),
  ProductModel('Aqua Man ', '10', '5.7/10', 'assets/wick.jpeg',
      'A man falls in love not knowing it is he death'),
  ProductModel('Wonder Woman', '11', '6.7/10', 'assets/wonder.jpeg',
      'A man falls in love not knowing it is he death'),
  ProductModel('Raya', '17', '7.7/10', 'assets/raya.jpeg',
      'A man falls in love not knowing it is he death'),
  ProductModel('The Great Gatsby', '15', '8.0/10', 'assets/sonic.jpeg',
      'A man falls in love not knowing it is he death'),
];


