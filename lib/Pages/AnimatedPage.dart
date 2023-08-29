import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _height = 300;
  double _width = 300;
  var _color = Colors.pink;
  BoxShape _shape = BoxShape.rectangle;

  void _change() {
    setState(() {
      _width = 100;
      _height = 100;
      _color = Colors.deepPurple;
      _shape = BoxShape.circle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _change,
        child: Column(
          children: [
            AnimatedContainer(
              
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                // borderRadius: BorderRadius.circular(20),
                shape: _shape,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
