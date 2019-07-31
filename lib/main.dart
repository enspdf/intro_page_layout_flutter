import 'package:flutter/material.dart';
import 'package:intro_page_layout/views/first_view.dart';
import 'package:intro_page_layout/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intro Page Layout',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstView(),
      routes: <String, WidgetBuilder>{
        '/signUp': (BuildContext context) => HomePage(),
        '/home': (BuildContext context) => HomePage(),
      },
    );
  }
}
