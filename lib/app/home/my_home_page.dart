import 'package:design_courses/app/home/components/recent_courses_card/recent_course_list.dart';
import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

import 'components/explore_course_list/explore_course_list.dart';
import 'components/home_screen_nav_bar/home_screen_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: ListView(
            children: [
              const HomeScreenNavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              const SizedBox(height: 15),
              const RecentCourseList(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 25,
                  top: 20,
                  bottom: 16,
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
    );
  }
}
