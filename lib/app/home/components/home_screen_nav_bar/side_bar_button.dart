import 'package:design_courses/layout/constants.dart';
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
      constraints: const BoxConstraints(
        maxHeight: 40.0,
        maxWidth: 40.0,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
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
            ]),
        child: Image.asset(
          'asset/icons/$iconURL',
          color: kPrimaryLabelColor,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width12,
          vertical: height14,
        ),
      ),
    );
  }
}
