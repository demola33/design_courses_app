import 'package:design_courses/app/home/components/continue_watching_course_list/continue_watching_card.dart';
import 'package:design_courses/app/model/course.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ContinueWatchingCourseList extends StatefulWidget {
  const ContinueWatchingCourseList({Key? key}) : super(key: key);

  @override
  State<ContinueWatchingCourseList> createState() =>
      _ContinueWatchingCourseListState();
}

class _ContinueWatchingCourseListState
    extends State<ContinueWatchingCourseList> {
  //final List<Container> _indicators = [];

  int _currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: continueWatchingCourses.map((course) {
        var index = continueWatchingCourses.indexOf(course);
        return Container(
          height: 7.w,
          width: 7.w,
          margin: EdgeInsets.symmetric(horizontal: 6.0.h),
          decoration: BoxDecoration(
            color: _currentPage == index
                ? const Color(0xFF0971FE)
                : const Color(0xFFA6AEBD),
            shape: BoxShape.circle,
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          width: double.infinity,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: continueWatchingCourses.length,
            controller: PageController(
              initialPage: 0,
              viewportFraction: 0.75,
            ),
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  // SizedBox(
                  //   height: index % 2 == 0 ? 0.0 : height30,
                  // ),
                  Opacity(
                      opacity: _currentPage == index ? 1.0 : 0.5,
                      child: ContinueWatchingCard(course: continueWatchingCourses[index]),),
                ],
              );
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
