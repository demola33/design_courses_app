import 'dart:io';

import 'package:design_courses/layout/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final List<String> badges = [
    "badge-01.png",
    "badge-02.png",
    "badge-03.png",
    "badge-04.png",
    "badge-05.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: kCardPopupBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(34.r),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 12.h),
                    blurRadius: 32.0.r,
                    color: kShadowColor
                  ),
                ]
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        top: 24.h,
                        bottom: 32.h,
                        right: 20.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                            constraints: BoxConstraints(
                              minWidth: 40.w,
                              maxWidth: 40.w,
                              maxHeight: 25.h,
                            ),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Icon(
                                Icons.arrow_back,
                              color: kSecondaryLabelColor,
                            ),
                          ),
                          Text(
                            "Profile",
                            style: kCalloutLabelStyle,
                          ),
                          Container(
                            height: 40.w,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.r),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 12.h),
                                  blurRadius: 32.r,
                                  color: kShadowColor,
                                ),
                              ]
                            ),
                            child: Icon(
                              Platform.isAndroid ? Icons.settings : CupertinoIcons.settings_solid,
                              color: kSecondaryLabelColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6.0.h, vertical: 6.0.h),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0.h, vertical: 6.0.h),
                                child: CircleAvatar(
                                  backgroundImage: const AssetImage(
                                      "asset/images/profile.jpg"
                                  ),
                                  radius: 30.r,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(42.r),
                                  color: kBackgroundColor,
                                ),
                              ),
                            ),
                            height: 84.h,
                            width: 84.h,
                            decoration: BoxDecoration(
                              gradient: const RadialGradient(
                                colors: [
                                  Color(0xFF00AEFF),
                                  Color(0xFF0077FF)
                                ]
                              ),
                              borderRadius: BorderRadius.circular(42.r),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Akanmu Ademola",
                                style: kTitle2Style,
                              ),
                              SizedBox(height: 8.0.h),
                              Text(
                                "Flutter Developer",
                                style: kSecondaryCalloutLabelStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28.h,bottom: 16.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Badges",
                                  style: kHeadlineLabelStyle,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "See all",
                                      style: kSearchPlaceholderStyle,
                                    ),
                                    const Icon(Icons.chevron_right, color: kSecondaryLabelColor),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 112.h,
                      child: ListView.builder(
                        padding: EdgeInsets.only(bottom: 28.h),
                        scrollDirection: Axis.horizontal,
                        itemCount: badges.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.only(left: 20.w, right: index != (badges.length - 1) ? 0.0 : 20.0.w),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 12.h),
                                  blurRadius: 18.r,
                                  color: kShadowColor.withOpacity(0.2),
                                ),
                              ]
                            ),
                            child: Image.asset("asset/badges/${badges[index]}"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
