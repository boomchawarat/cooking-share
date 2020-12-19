import 'package:flutter/material.dart';
import 'package:cooking_share/routes/router.dart';
import 'package:cooking_share/screens/profile_screen.dart';
import 'package:cooking_share/values/values.dart';
import 'dart:math' as math;

import 'bookmarks_screen.dart';
import 'main_screen.dart';

class RootScreen extends StatefulWidget {
  RootScreen({this.currentScreen});

  final CurrentScreen currentScreen;

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen>
    with SingleTickerProviderStateMixin {
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen;
  int currentTab;
  AnimationController _controller;

  final double tilt90Degrees = 90;
  double angle = math.pi;

  @override
  initState() {
    super.initState();
    currentScreen = widget.currentScreen?.currentScreen ?? MainScreen();
    currentTab = widget.currentScreen?.tabNo ?? 0;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  changeScreen({
    @required Widget currentScreen,
    @required int currentTab,
  }) {
    setState(() {
      this.currentScreen = currentScreen;
      this.currentTab = currentTab;
    });
  }

  void changeAngle() {
    if (angle == math.pi) {
      setState(() {
        angle = tilt90Degrees;
      });
    } else {
      setState(() {
        angle = math.pi;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              bottomNavigationIcon(
                destination: MainScreen(),
                currentTab: MainScreen.TAB_NO,
                activeIcon: ImagePath.activeHomeIcon2,
                nonActiveIcon: ImagePath.homeIcon,
              ),
              bottomNavigationIcon(
                destination: BookmarksScreen(),
                currentTab: BookmarksScreen.TAB_NO,
                activeIcon: ImagePath.activeBookmarksIcon2,
                nonActiveIcon: ImagePath.bookmarksIcon,
              ),
              bottomNavigationIcon(
                destination: BookmarksScreen(),
                currentTab: BookmarksScreen.TAB_NO,
                activeIcon: ImagePath.activeBookmarksIcon2,
                nonActiveIcon: ImagePath.bookmarksIcon,
              ),
              bottomNavigationIcon(
                destination: BookmarksScreen(),
                currentTab: BookmarksScreen.TAB_NO,
                activeIcon: ImagePath.activeBookmarksIcon2,
                nonActiveIcon: ImagePath.bookmarksIcon,
              ),
              bottomNavigationIcon(
                destination: ProfileScreen(),
                currentTab: ProfileScreen.TAB_NO,
                activeIcon: ImagePath.activePersonIcon,
                nonActiveIcon: ImagePath.personGreyIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon({
    @required Widget destination,
    @required int currentTab,
    @required String activeIcon,
    @required String nonActiveIcon,
  }) {
    return InkWell(
      onTap: () {
        if (angle == tilt90Degrees) {
          setState(() {
            angle = math.pi;
          });
        }
        changeScreen(currentScreen: destination, currentTab: currentTab);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          (this.currentTab == currentTab) ? activeIcon : nonActiveIcon,
        ),
      ),
    );
  }
}
