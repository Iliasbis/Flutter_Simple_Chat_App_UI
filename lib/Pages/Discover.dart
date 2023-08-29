import 'package:flutter/material.dart';

import '../Util/_const.dart';
import '../Util/_profileCircle.dart';

class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key});

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
  List<String> userName = [
    "ILias Bis",
    "Yassine Rgh",
    "Mehdi Kcr",
    "its Shadow",
    "Mohammed Chergaoui",
    "Mustapha mstn",
    "Yamini Mohemmed",
    "Ibrahim Zidane",
    "Youness Faracha",
    "Mehdi sabran",
    "Moughit Mellali",
    "Kouar belkhir",
    "Mouad ezzire",
    "Youssef Windows 9",
    "Taha bellaoui",
    "Ali belkadi",
    "simo ",
    "Adam",
    "Oussama",
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: secondBgColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            profileCircle(path: images[index]),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  userName[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "10 Min Ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade800,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(108, 211, 211, 211)
                            .withOpacity(0.3),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                  images[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
