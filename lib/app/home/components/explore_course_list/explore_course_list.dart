import 'package:design_courses/app/home/components/explore_course_list/explore_course_card.dart';
import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class ExploreCourseList extends StatelessWidget {
  const ExploreCourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? width20 : 0.0),
            child: ExploreCourseCard(course: exploreCourses[index]),
          );
        },
      ),
    );
  }
}
