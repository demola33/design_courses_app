import 'package:design_courses/layout/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String hintText = 'Search for courses';
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.w, right: 30.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12.h),
                blurRadius: 16.r,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                icon: const Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20,
                ),
                hintText: hintText,
                hintStyle: kSearchPlaceholderStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
