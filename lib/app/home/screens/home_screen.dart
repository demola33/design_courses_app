import 'package:design_courses/app/home/components/recent_courses_card/recent_course_list.dart';
import 'package:design_courses/app/home/screens/side_bar_screen.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:design_courses/layout/size_config.dart';
import 'package:flutter/material.dart';

import '../components/explore_course_list/explore_course_list.dart';
import '../components/home_screen_nav_bar/home_screen_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<Offset>? sideBarAnimation;
  AnimationController? sideBarAnimationController;
  Animation<double>? fadeAnimation;

  Color fadedContainerColor = const Color.fromRGBO(36, 38, 41, 0.4);
  bool sideBarHidden = true;

  @override
  void initState() {
    super.initState();
    sideBarAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    sideBarAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: sideBarAnimationController!,
        curve: Curves.easeInOut,
      ),
    );

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: sideBarAnimationController!,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    sideBarAnimationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeScreenNavBar(
                    triggerAnimation: triggerAnimation,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Recents',
                          style: kLargeTitleStyle,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          '23 courses, more coming soon!',
                          style: kSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height16),
                  const RecentCourseList(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width20,
                      right: width25,
                      top: height20,
                      bottom: height16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Explore',
                          style: kTitle1Style,
                        ),
                      ],
                    ),
                  ),
                  const ExploreCourseList(),
                ],
              ),
            ),
            IgnorePointer(
              ignoring: sideBarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation!,
                    child: GestureDetector(
                      onTap: reverseTriggerAnimation,
                      child: Container(
                        color: fadedContainerColor,
                        height: screenHeight,
                        width: screenWidth,
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: sideBarAnimation!,
                    child: const SafeArea(
                      child: SideBarScreen(),
                      bottom: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void triggerAnimation() {
    setState(() {
      sideBarHidden = !sideBarHidden;
    });
    sideBarAnimationController?.forward();
  }

  void reverseTriggerAnimation() {
    setState(() {
      sideBarHidden = !sideBarHidden;
    });
    sideBarAnimationController?.reverse();
  }
}
