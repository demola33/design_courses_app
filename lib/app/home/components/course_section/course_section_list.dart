import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'course_section_card.dart';

class CourseSectionList extends StatelessWidget {
  const CourseSectionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: courseSectionWidgets(),
      ),
    );
  }
}

List<Widget> courseSectionWidgets() {
  List<Widget> cards = [];

  for (var course in courseSections) {
    cards.add(
      Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: CourseSectionCard(course: course),
      ),
    );
  }

  cards.add(
    Padding(
      padding: EdgeInsets.only(top: 12.0.h),
      child: Text(
        "No more Sections to view, look\nfor more in our courses",
        style: kCaptionLabelStyle,
        textAlign: TextAlign.center,
      ),
    )
  );
  return cards;
}
