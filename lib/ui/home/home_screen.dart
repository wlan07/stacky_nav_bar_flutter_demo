import 'dart:developer';

import 'package:custom_bottom_bar_flutter/my_flutter_app_icons.dart';
import 'package:custom_bottom_bar_flutter/ui/home/widgets/home_screen_content.dart';
import 'package:custom_bottom_bar_flutter/ui/stacky_bottom_nav_bar/models/stacky_animated_nav_bar_item.dart';
import 'package:custom_bottom_bar_flutter/ui/stacky_bottom_nav_bar/models/stacky_bottom_nav_bar_params.dart';
import 'package:custom_bottom_bar_flutter/ui/stacky_bottom_nav_bar/models/stacky_simple_nav_bar_item.dart';
import 'package:custom_bottom_bar_flutter/ui/stacky_bottom_nav_bar/stacky_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        const Positioned(
          child: HomeScreenContent(),
          bottom: StackyBottomNavBar.defaultHeigh,
          left: 0.0,
          right: 0.0,
          top: 0.0,
        ),
        StackyBottomNavBar(
          params: StackyBottomNavBarParams(
            animatedNavBarItems: [
              StackyAnimatedNavBarItem(
                icon: MyFlutterApp.videocam,
                onTap: () => log("videocam"),
              ),
              StackyAnimatedNavBarItem(
                icon: MyFlutterApp.camera,
                onTap: () => log("camera"),
              ),
              StackyAnimatedNavBarItem(
                icon: MyFlutterApp.picture,
                onTap: () => log("picture"),
              ),
            ],
            simpleNavBarItems: [
              StackySimpleNavBarItem(
                icon: MyFlutterApp.house,
                onTap: () => log("house"),
              ),
              StackySimpleNavBarItem(
                icon: MyFlutterApp.user,
                onTap: () => log("user"),
              )
            ],
            currentSelectedTabIndex: 0,
          ),
        ),
      ],
    )));
  }
}
