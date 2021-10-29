import 'dart:io';

import 'package:design_courses/app/model/course.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  Widget indicators() {
    List<Widget> indicators = [];

    for (var i = 0; i < 9; i++) {
      indicators.add(Container(
        height: 7.h,
        width: 7.h,
        margin: EdgeInsets.symmetric(horizontal: 6.0.h),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: i == 0 ? const Color(0xFF0971FE) : const Color(0xFFA6AEBD),
        ),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  PanelController? _panelController;

  @override
  void initState() {
    super.initState();
    _panelController = PanelController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: SlidingUpPanel(
          controller: _panelController,
          panel: Container(),
          backdropEnabled: true,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34.0.r),
          ),
          color: kCardPopupBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -12.h),
              color: kShadowColor,
              blurRadius: 32.r,
            )
          ],
          minHeight: 0,
          maxHeight: screenHeight * 0.95,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0.h),
                      child: Container(
                        height: screenHeight * 0.5,
                        decoration: BoxDecoration(
                          gradient: widget.course.background,
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.5,
                      child: SafeArea(
                        bottom: false,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20.0.h, top: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 60.h,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0.h, horizontal: 10.0.w),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(18.r),
                                      ),
                                      child: Hero(
                                        tag: widget.course.logo!,
                                        child: Image.asset(
                                            'asset/logos/${widget.course.logo}'),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Hero(
                                            tag: widget.course.courseSubtitle,
                                            child: Text(
                                              widget.course.courseSubtitle,
                                              style: kSecondaryCalloutLabelStyle
                                                  .copyWith(
                                                      color: Colors.white70),
                                            ),
                                          ),
                                          Hero(
                                            tag: widget.course.courseTitle,
                                            child: Text(
                                              widget.course.courseTitle,
                                              style: kLargeTitleStyle.copyWith(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                        height: 36.0.h,
                                        width: 36.0.h,
                                        decoration: BoxDecoration(
                                          color:
                                              kPrimaryLabelColor.withOpacity(0.8),
                                          borderRadius:
                                              BorderRadius.circular(12.r),
                                        ),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 28.h),
                              Expanded(
                                child: Hero(
                                  tag: widget.course.illustration,
                                  child: Image.asset(
                                    'asset/illustrations/${widget.course.illustration}',
                                    alignment: Alignment.topCenter,
                                    fit: BoxFit.cover,
                                    width: screenWidth,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 28.w),
                      child: Container(
                        height: 60.h,
                        width: 60.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                blurRadius: 16.r,
                                offset: Offset(0, 4.h),
                              )
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12.5.h,
                            bottom: 13.5.h,
                            left: 20.5.h,
                            right: 14.5.h,
                          ),
                          child: Image.asset('asset/icons/icon-play.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.w,
                    right: 28.w,
                    top: 12.h,
                    //bottom: 20.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Group2(
                        course: widget.course,
                        icon: Icon(
                          Platform.isAndroid
                              ? Icons.people
                              : CupertinoIcons.group_solid,
                          color: Colors.white,
                        ),
                        title: "28.7K",
                        footNote: "Students",
                      ),
                      Group2(
                        course: widget.course,
                        icon: Icon(
                          Platform.isAndroid
                              ? Icons.format_quote
                              : CupertinoIcons.news_solid,
                          color: Colors.white,
                        ),
                        title: "12.4K",
                        footNote: "Comments",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.0.h, right: 28.0.w, left: 28.0.w, bottom: 20.0.h,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      indicators(),
                      GestureDetector(
                        onTap: () => _panelController?.open(),
                        child: Container(
                          alignment: Alignment.center,
                          width: 79.0.w,
                          height: 40.0.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.r),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 12.h),
                                color: kShadowColor,
                                blurRadius: 16.r,
                              )
                            ]
                          ),
                          child: Text(
                            "View all",
                            style: kSearchTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "5 years ago, I couldn’t write a single line of Swift. I learned it and moved to React, Flutter while using increasingly complex design tools. I don’t regret learning them because SwiftUI takes all of their best concepts. It is hands-down the best way for designers to take a first step into code.",
                        style: kBodyLabelStyle,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "About this course",
                        style: kTitle1Style,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "This course was written for people who are passionate about design and about Apple's SwiftUI. It beginner-friendly, but it is also packed with tricks and cool workflows about building the best UI. Currently, Xcode 11 is still in beta so the installation process may be a little hard. However, once you get everything working, then it'll get much friendlier!",
                        style: kBodyLabelStyle,
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Group2 extends StatelessWidget {
  const Group2({
    Key? key,
    required this.course,
    required this.icon,
    required this.title,
    required this.footNote,
  }) : super(key: key);

  final Course course;
  final Icon icon;
  final String title, footNote;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(4.0.r),
          child: Container(
            padding: EdgeInsets.all(4.0.r),
            child: CircleAvatar(
              child: icon,
              radius: 21.r,
              backgroundColor: kCourseElementIconColor,
            ),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(25.0.r),
            ),
          ),
          decoration: BoxDecoration(
            gradient: course.background,
            borderRadius: BorderRadius.circular(29.0.r),
          ),
        ),
        SizedBox(width: 12.h),
        Column(
          children: [
            Text(
              title,
              style: kTitle2Style,
            ),
            SizedBox(height: 3.h),
            Text(
              footNote,
              style: kSearchPlaceholderStyle,
            ),
          ],
        ),
      ],
    );
  }
}
