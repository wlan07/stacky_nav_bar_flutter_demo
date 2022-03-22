import 'package:custom_bottom_bar_flutter/ui/stacky_bottom_nav_bar/models/stacky_animated_nav_bar_item.dart';
import 'package:custom_bottom_bar_flutter/ui/stacky_bottom_nav_bar/models/stacky_simple_nav_bar_item.dart';
import 'package:flutter/cupertino.dart';

class StackyBottomNavBarParams {
  final List<StackySimpleNavBarItem> simpleNavBarItems;
  final List<StackyAnimatedNavBarItem> animatedNavBarItems;
  final Brightness brightness;
  final int? bgColor;
  final int currentSelectedTabIndex;
  StackyBottomNavBarParams({
    this.bgColor,
    required this.simpleNavBarItems,
    required this.animatedNavBarItems,
    this.brightness = Brightness.light,
    this.currentSelectedTabIndex = 0,
  })  : assert(
          simpleNavBarItems.length == 2,
          "simpleNavBarItems's length must be fixed to 2",
        ),
        assert(animatedNavBarItems.length == 3,
            "animatedNavBarItems's length must be fixed to 3");
}
