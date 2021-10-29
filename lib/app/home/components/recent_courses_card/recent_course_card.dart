import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.only(top: 20.h),
          child: Container(
            height: 240.h,
            width: 240.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(41.r),
              gradient: course.background,
              boxShadow: [
                BoxShadow(
                  color: course.background.colors[0].withOpacity(0.3),
                  offset: Offset(0, 20.h),
                  blurRadius: 30.r,
                ),
                BoxShadow(
                  color: course.background.colors[1].withOpacity(0.3),
                  offset: Offset(0, 20.h),
                  blurRadius: 30.r,
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 31.h,
                    right: 32.h,
                    left: 32.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: course.courseSubtitle,
                        child: Text(
                          course.courseSubtitle,
                          style: kCardSubtitleStyle,
                        ),
                      ),
                      SizedBox(height: 6.0.h),
                      Hero(
                        tag: course.courseTitle,
                        child: Text(
                          course.courseTitle,
                          style: kCardTitleStyle,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Hero(
                      tag: course.illustration,
                      child: Image.asset(
                        'asset/illustrations/${course.illustration}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 40.h),
          child: Container(
            child: Hero(
              tag: course.logo!,
              child: Image.asset('asset/logos/${course.logo}'),
            ),
            height: 60.h,
            width: 60.h,
            padding: EdgeInsets.only(
              top: 14.h,
              bottom: 14.h,
              left: 12.h,
              right: 8.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 4.h),
                  blurRadius: 8.r,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
