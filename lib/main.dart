import 'package:flutter/material.dart';
import 'package:shop_app/view/builder/builder.dart';
import 'package:shop_app/view/list_view/list_view.dart';

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
      // home: HomeListView(),
      home: HomeBuilder(),
    );
  }
}