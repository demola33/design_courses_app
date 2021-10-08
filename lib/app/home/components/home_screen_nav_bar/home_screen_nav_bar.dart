import 'package:design_courses/app/home/components/home_screen_nav_bar/search_field_widget.dart';
import 'package:design_courses/app/home/components/home_screen_nav_bar/side_bar_button.dart';
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
      padding: EdgeInsets.all(pad20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBarButton(
            triggerAnimation: triggerAnimation,
          ),
          const SearchFieldWidget(),
          const Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(width: width15),
          CircleAvatar(
            backgroundImage: const AssetImage('asset/images/$profileURL'),
            radius: rad18,
          ),
        ],
      ),
    );
  }
}
