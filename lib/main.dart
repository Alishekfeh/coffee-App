import 'package:coffeeapp/pages/mu_home_page.dart';
import 'package:flutter/material.dart';
// أختيار من متعدد من ال list عن طريق ال for loop
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
