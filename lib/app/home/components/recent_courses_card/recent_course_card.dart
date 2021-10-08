import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class RecentCourseCard extends StatelessWidget {
  const RecentCourseCard({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: height20),
          child: Container(
            height: height240,
            width: width240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(rad40),
              gradient: course.background,
              boxShadow: [
                BoxShadow(
                  color: course.background.colors[0].withOpacity(0.3),
                  offset: Offset(0, height20),
                  blurRadius: rad30,
                ),
                BoxShadow(
                  color: course.background.colors[1].withOpacity(0.3),
                  offset: Offset(0, height20),
                  blurRadius: rad30,
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height30,
                    right: width30,
                    left: width30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'asset/illustrations/${course.illustration}',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: width40),
          child: Container(
            child: Image.asset('asset/logos/${course.logo}'),
            height: height60,
            width: width60,
            padding: EdgeInsets.all(pad12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(rad18),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: const Offset(0, 4),
                  blurRadius: rad16,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
