import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String hintText = 'Search for courses';
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: const Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20.0,
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
