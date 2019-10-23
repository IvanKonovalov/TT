import 'package:flutter/material.dart';

class TextFade extends StatefulWidget {
  @override
  createState() => TextFadeState();
}

class TextFadeState extends State<TextFade>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 10));

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return new FadeTransition(
        opacity: _animation,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hey',
                style: TextStyle(
                  //TODO orientation
                  fontWeight: FontWeight.bold,
                  fontFamily: 'segoe script ',
                  letterSpacing: 2.0,
                  shadows: [
                    Shadow(
                      blurRadius: 13.0,
                      color: Colors.purple,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                )),
            new Text(
              'there',
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 13.0,
                    color: Colors.purple,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
