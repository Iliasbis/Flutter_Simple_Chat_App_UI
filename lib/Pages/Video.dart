import 'package:flutter/material.dart';

class Video extends StatelessWidget {
   Video({super.key});

  @override
   List<String> images = [
    "lib/Assets/pic1.jfif",
    "lib/Assets/pic2.jfif",
    "lib/Assets/pic3.jfif",
    "lib/Assets/pic4.jfif",
    "lib/Assets/pic5.jfif",
    "lib/Assets/pic6.jfif",
    "lib/Assets/pic7.jfif",
    "lib/Assets/pic8.png",
    "lib/Assets/pic9.png",
    "lib/Assets/pic10.jfif",
    "lib/Assets/pic11.jfif",
    "lib/Assets/pic12.jfif",
    "lib/Assets/pic13.jfif",
    "lib/Assets/pic14.jfif",
    "lib/Assets/pic15.jfif",
    "lib/Assets/pic16.png",
    "lib/Assets/pic17.jfif",
    "lib/Assets/pic18.jfif",
    "lib/Assets/pic19.jfif",
  ];
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
    );
  }
}
