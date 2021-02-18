import 'package:flutter/material.dart';
import 'package:haber/core/components/navbar.dart';
import 'package:haber/view/haberler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavbarRoute(),
    );
  }
}

