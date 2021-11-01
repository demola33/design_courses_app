import 'package:design_courses/app/home/components/course_section/course_section_list.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseSectionsScreen extends StatelessWidget {
  const CourseSectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34.r),
        )
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
            decoration: BoxDecoration(
              color: kCardPopupBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34.r),
                bottomLeft: Radius.circular(34.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12.h),
                  blurRadius: 32.0.r,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                    "Course Sections",
                  style: kTitle2Style,
                ),
                SizedBox(height: 5.h),
                Text(
                  "12 Sections",
                  style: kSubtitleStyle,
                )
              ],
            ),
          ),
          const CourseSectionList(),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
