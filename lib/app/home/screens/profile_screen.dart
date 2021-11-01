import 'dart:io';

import 'package:design_courses/layout/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                child: Padding(
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
              ),
            ),
          ],
        ),
    );
  }
}
