import 'package:design_courses/app/home/components/recent_course_card.dart';
import 'package:design_courses/app/home/screens/side_bar_screen.dart';
import 'package:design_courses/app/model/course.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RecentCourseCard(
          course: recentCourses[0],
        ),
      ),
    );
  }
}
