import 'package:flutter/material.dart';

import '../Util/_const.dart';
import '../Util/_profileCircle.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({super.key});

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
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage(
                                  images[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.favorite_outline,
                                      color: Colors.grey.shade400,
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(
                                      Icons.comment_outlined,
                                      color: Colors.grey.shade400,
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(
                                      Icons.ios_share_outlined,
                                      color: Colors.grey.shade400,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          color: Colors.grey.shade300,
                                        ),
                                        children: [
                                          const TextSpan(text: "288"),
                                          const TextSpan(
                                            text: " Likes",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const TextSpan(text: "     .    "),
                                          const TextSpan(text: "200"),
                                          const TextSpan(
                                            text: " Comment",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.grey.shade300,
                                    ),
                                    children: [
                                      const TextSpan(text: "Ilias Bis"),
                                      const TextSpan(
                                        text:
                                            " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
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
