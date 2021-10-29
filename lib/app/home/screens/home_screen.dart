import 'package:design_courses/app/home/components/recent_courses_card/recent_course_list.dart';
import 'package:design_courses/app/home/screens/continue_watching_screen.dart';
import 'package:design_courses/app/home/screens/side_bar_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:design_courses/layout/size_config.dart';
import 'package:flutter/gestures.dart';
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
  Animation<Offset>? continueWatchingScreenAnimation;
  AnimationController? continueWatchingScreenAnimationController;

  Color fadedContainerColor = const Color.fromRGBO(36, 38, 41, 0.4);
  bool sideBarHidden = true;

  @override
  void initState() {
    super.initState();
    continueWatchingScreenAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeScreenNavBar(
                      triggerAnimation: triggerAnimation,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Recent',
                            style: kLargeTitleStyle,
                          ),
                          SizedBox(height: 5.0.h),
                          Text(
                            '23 courses, more coming soon!',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const RecentCourseList(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 25.w,
                        top: 15.h,
                        bottom: 14.h,
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
            ),
            const ContinueWatchingScreen(),
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
