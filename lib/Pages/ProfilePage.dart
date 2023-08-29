// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app_v1/Pages/MainPage.dart';
import 'package:chat_app_v1/Util/_const.dart';
import 'package:chat_app_v1/Util/_followersBar.dart';
import 'package:flutter/material.dart';

import 'Discover.dart';
import 'Explore.dart';
import 'HomePage.dart';
import 'Post.dart';
import 'Video.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  Color activeColor = buttonColor;
  int _currentTabIndex = 0;

  Color disableColor = secondBgColor;
  bool photo = true;
  bool video = false;
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
        photo = true;
        video = false;
      } else {
        photo = false;
        video = true;
      }
      _currentTabIndex = index;
      _tabController.index = _currentTabIndex;
    });
  }

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: AssetImage("lib/Assets/profile_pic.jfif"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return MainPage();
                                },
                              ));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.grey.shade200,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.grey.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 63,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 60,
                            backgroundImage:
                                AssetImage("lib/Assets/profile.jpg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              backgroundColor.withOpacity(.3),
                              backgroundColor.withOpacity(.4),
                              backgroundColor.withOpacity(.5),
                              backgroundColor.withOpacity(.6),
                              backgroundColor.withOpacity(.7),
                              backgroundColor.withOpacity(.8),
                              backgroundColor.withOpacity(.9),
                              backgroundColor,
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "ILias Bissoufa",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 80),
                            Text(
                              '"Art Is Future"',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            Text(
                              "My Portfolio :",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 80),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 24),
                child: Column(
                  children: [
                    FollowerBar(),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 15,
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
                                width: MediaQuery.of(context).size.width / 2.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: photo ? activeColor : disableColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Post",
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
                                width: MediaQuery.of(context).size.width / 2.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: video ? activeColor : disableColor,
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
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          Post(),
                          Video(),
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
    );
  }
}
