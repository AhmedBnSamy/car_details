import 'package:flutter/material.dart';
import 'package:profile_info/views/details_car.dart';
import 'package:profile_info/views/profile_information_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProductDetailScreen(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
