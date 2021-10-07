import 'package:design_courses/app/home/components/recent_course_card.dart';
import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

import 'components/home_screen_nav_bar/home_screen_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              const HomeScreenNavBar(),
              RecentCourseCard(
                course: recentCourses[0],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
