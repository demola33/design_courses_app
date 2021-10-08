import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class ExploreCourseCard extends StatelessWidget {
  const ExploreCourseCard({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: width20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(rad40),
        child: Container(
          height: height120,
          width: width280,
          decoration: BoxDecoration(
            gradient: course.background,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: width30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'asset/illustrations/${course.illustration}',
                      height: height100,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
