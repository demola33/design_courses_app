import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseSectionCard extends StatelessWidget {
  const CourseSectionCard({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 120.h,
        //width: 235.w,
        decoration: BoxDecoration(
            gradient: course.background,
            borderRadius: BorderRadius.circular(34.r),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 20.h),
                  color: course.background.colors[0].withOpacity(0.3),
                  blurRadius: 30.r),
              BoxShadow(
                  offset: Offset(0, 20.h),
                  color: course.background.colors[1].withOpacity(0.3),
                  blurRadius: 30.r)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(34.r),
          child: Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("asset/illustrations/${course.illustration}"),
                  ],
                ),
                Row(
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
                          SizedBox(height: 5.h),
                          Text(
                            course.courseTitle,
                            style: kCardTitleStyle,
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
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
