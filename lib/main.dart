import 'package:flutter/material.dart';
import 'package:retrofit_api_demo/home__screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
