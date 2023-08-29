// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields
import 'package:chat_app_v1/Pages/Discover.dart';
import 'package:chat_app_v1/Pages/Explore.dart';
import 'package:chat_app_v1/Util/_const.dart';
import 'package:chat_app_v1/Util/_profileCircle.dart';
import 'package:chat_app_v1/Util/_story.dart';
import 'package:flutter/material.dart';
import 'AnimatedPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color activeColor = buttonColor;
  int _currentTabIndex = 0;

  Color disableColor = secondBgColor;
  bool container1Active = true;
  bool container2Active = false;
  late TabController _tabController =
      TabController(length: 2, vsync: this, initialIndex: _currentTabIndex);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void activateContainer(int containerNumber, int index) {
    setState(() {
      if (containerNumber == 1) {
        container1Active = true;
        container2Active = false;
      } else {
        container1Active = false;
        container2Active = true;
      }
      _currentTabIndex = index;
      _tabController.index = _currentTabIndex;
    });
  }

  List<String> images = [
    "lib/Assets/pic4.jfif",
    "lib/Assets/pic5.jfif",
    "lib/Assets/pic6.jfif",
    "lib/Assets/pic3.jfif",
    "lib/Assets/pic7.jfif",
    "lib/Assets/pic8.png",
    "lib/Assets/pic9.png",
    "lib/Assets/pic10.jfif",
    "lib/Assets/pic11.jfif",
    "lib/Assets/pic12.jfif",
    "lib/Assets/pic1.jfif",
    "lib/Assets/pic13.jfif",
    "lib/Assets/pic14.jfif",
    "lib/Assets/pic15.jfif",
    "lib/Assets/pic2.jfif",
    "lib/Assets/pic16.png",
    "lib/Assets/pic17.jfif",
    "lib/Assets/pic18.jfif",
    "lib/Assets/pic19.jfif",
  ];

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SocioRoom',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: Icon(
                              Icons.notifications,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(width: 15),
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: Icon(
                              Icons.mark_unread_chat_alt_outlined,
                              color: Colors.grey.shade400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Stories",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.6,
                  color: Colors.transparent,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Story(
                          StoryImage: images[index],
                          ProfileImage: images[index]);
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 13,
                        decoration: BoxDecoration(
                          color: secondBgColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: GestureDetector(
                                onTap: () => activateContainer(1, 0),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 700),
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: container1Active
                                        ? activeColor
                                        : disableColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Explore",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: GestureDetector(
                                onTap: () => activateContainer(2, 1),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 700),
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: container2Active
                                        ? activeColor
                                        : disableColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Discover",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            ExplorePage(),
                            DiscoverPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
