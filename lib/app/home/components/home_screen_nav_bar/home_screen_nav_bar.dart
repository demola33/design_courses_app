import 'package:design_courses/app/home/components/home_screen_nav_bar/search_field_widget.dart';
import 'package:design_courses/app/home/components/home_screen_nav_bar/side_bar_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({Key? key, required this.triggerAnimation})
      : super(key: key);

  final Function() triggerAnimation;

  @override
  Widget build(BuildContext context) {
    const String profileURL = 'profile.jpg';

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SizedBox(
        height: 40,
        width: 335.w,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SideBarButton(
              triggerAnimation: triggerAnimation,
            ),
            const SearchFieldWidget(),
            const Icon(
              Icons.notifications,
              color: kPrimaryLabelColor,
            ),
            SizedBox(width: 15.w),
            CircleAvatar(
              backgroundImage: const AssetImage('asset/images/$profileURL'),
              radius: 18.r,
            ),
          ],
        ),
      ),
    );
  }
}
