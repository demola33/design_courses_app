import 'package:design_courses/app/home/components/home_screen_nav_bar/search_field_widget.dart';
import 'package:design_courses/app/home/components/home_screen_nav_bar/side_bar_button.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String profileURL = 'profile.jpg';

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SideBarButton(),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(width: 15.0),
          CircleAvatar(
            backgroundImage: AssetImage('asset/images/$profileURL'),
            radius: 18.0,
          ),
        ],
      ),
    );
  }
}
