import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String hintText = 'Search for courses';
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: width12, right: width30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(rad14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, height12),
                blurRadius: rad16,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width15),
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
