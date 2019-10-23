import 'package:flutter/material.dart';
import 'package:my_third_fist_app_on_android/text_fade.dart';
import 'dart:math';

class Background extends StatefulWidget {
  @override
  createState() => BackgroundState();
}

class BackgroundState extends State<Background> {
  Color _backgroundColor = new Color.fromRGBO(255, 255, 255, 1.0);

  void _randomizeColor() {
    Random key = new Random();
    Color _newColor = new Color.fromRGBO(
        key.nextInt(255), key.nextInt(255), key.nextInt(255), 1.0);
    setState(() {
      _backgroundColor = _newColor;
    });
  }

  _changeColor() {
    print("onTap event");
    _randomizeColor();
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (() {
        _changeColor();
      }),
      child: new Scaffold(
        body: new Container(
          color: _backgroundColor,
          child: new Center(
            child: new TextFade(),
          ),
        ),
      ),
    );
  }
}
