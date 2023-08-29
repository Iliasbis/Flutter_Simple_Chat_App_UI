// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class profileCircle extends StatelessWidget {
  final String path;
  const profileCircle({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 23,
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage(path),
      ),
    );
  }
}
