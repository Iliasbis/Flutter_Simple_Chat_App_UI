import 'package:chat_app_v1/Util/_const.dart';
import 'package:flutter/material.dart';

import '_profileCircle.dart';

class Story extends StatelessWidget {
  final String StoryImage;
  final String ProfileImage;
  const Story({super.key, required this.StoryImage, required this.ProfileImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(StoryImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: secondBgColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Align(
              alignment: Alignment(-1, -1),
              child: profileCircle(path: ProfileImage)),
        ),
      ),
    );
  }
}
