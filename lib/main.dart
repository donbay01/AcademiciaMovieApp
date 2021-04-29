
import 'package:academician_help/login_page.dart';
import 'package:academician_help/model/productModel.dart';
import 'package:flutter/material.dart';
import 'screens/movies_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
