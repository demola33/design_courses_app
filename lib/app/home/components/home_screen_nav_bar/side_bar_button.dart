import 'package:design_courses/layout/constants.dart';
import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String iconURL = 'icon-sidebar.png';
    return RawMaterialButton(
      onPressed: () {
        print('Nav Button Pressed');
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: const BoxConstraints(
        maxHeight: 40.0,
        maxWidth: 40.0,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
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
            ]),
        child: Image.asset(
          'asset/icons/$iconURL',
          color: kPrimaryLabelColor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 14.0,
        ),
      ),
    );
  }
}
