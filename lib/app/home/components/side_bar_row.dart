import 'package:design_courses/app/model/side_bar_item.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class SideBarRow extends StatelessWidget {
  const SideBarRow({
    Key? key,
    required this.sideBarItem,
  }) : super(key: key);

  final SideBarItem sideBarItem;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 42.0,
        width: 42.0,
        decoration: BoxDecoration(
          gradient: sideBarItem.background,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: sideBarItem.icon,
        ),
      ),
      const SizedBox(width: 12.0),
      Text(
        sideBarItem.title,
        style: kCalloutLabelStyle,
      )
    ]);
  }
}
