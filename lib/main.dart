import 'package:coffee/view/dashboard/home/home_page.dart';
import 'package:coffee/view/auth/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:coffee/product/readme.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cyber Coffee",
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}
