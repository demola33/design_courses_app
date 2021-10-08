import 'package:design_courses/app/home/components/side_bar_row.dart';
import 'package:design_courses/app/model/side_bar_item.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const String profileURL = 'asset/images/profile.jpg';
    const String logOutURL = 'asset/icons/icon-logout.png';
    const String fullName = 'Akanmu Ademola';
    const String dateJoined = 'Joined 5th Oct 2021';
    const String logOut = 'Log Out';
    SizedBox customSizedBox = SizedBox(height: height40);

    return Container(
      height: size.height,
      width: width350,
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(rad35),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: height35,
        horizontal: width20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage(profileURL),
                radius: rad35,
              ),
              SizedBox(width: width15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullName,
                    style: kHeadlineLabelStyle,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    dateJoined,
                    style: kSearchPlaceholderStyle,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: height50,
          ),
          customSizedBox,
          SideBarRow(
            sideBarItem: sidebarItem[0],
          ),
          customSizedBox,
          SideBarRow(
            sideBarItem: sidebarItem[1],
          ),
          customSizedBox,
          SideBarRow(
            sideBarItem: sidebarItem[2],
          ),
          customSizedBox,
          SideBarRow(
            sideBarItem: sidebarItem[3],
          ),
          customSizedBox,
          const Spacer(),
          Row(children: [
            Image.asset(
              logOutURL,
              width: width17,
            ),
            const SizedBox(width: 4),
            Text(
              logOut,
              style: kSecondaryCalloutLabelStyle,
            )
          ])
        ],
      ),
    );
  }
}
