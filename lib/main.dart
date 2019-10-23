import 'package:flutter/material.dart';
import 'package:my_third_fist_app_on_android/background.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            body1: TextStyle(fontSize: 96.0),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          extendBody: true,
          body: new Background(),
        ));
  }
}


