import 'package:design_courses/layout/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton({
    Key? key,
    required this.triggerAnimation,
  }) : super(key: key);

  final Function() triggerAnimation;

  @override
  Widget build(BuildContext context) {
    const String iconURL = 'icon-sidebar.png';
    return RawMaterialButton(
      onPressed: triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(
        maxHeight: 40.0,
        maxWidth: 40.0.w,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
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
            ]),
        child: Image.asset(
          'asset/icons/$iconURL',
          color: kPrimaryLabelColor,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 13.75.h,
        ),
      ),
    );
  }
}
