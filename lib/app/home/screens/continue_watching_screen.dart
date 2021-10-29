import 'package:design_courses/app/home/components/certificate_viewer.dart';
import 'package:design_courses/app/home/components/continue_watching_course_list/continue_watching_course_list.dart';
import 'package:design_courses/layout/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// class ContinueWatchingScreen1 extends StatelessWidget {
//   const ContinueWatchingScreen1({Key? key, required this.onLongPress})
//       : super(key: key);
//
//   final void Function(DragStartDetails) onLongPress;
//
//   @override
//   Widget build(BuildContext context) {
//     return DraggableScrollableSheet(
//       initialChildSize: 0.1,
//       minChildSize: 0.1,
//       maxChildSize: 0.8,
//       builder: (context, scrollController) => Container(
//         width: screenWidth,
//         height: screenHeight,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(34.r),
//           ),
//         ),
//         child: ListView(
//           controller: scrollController,
//           //crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Container(
//                 margin: const EdgeInsets.all(8.0),
//                 height: 5.0,
//                 width: width50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(2.5),
//                   color: const Color(0xFFC5CBD6),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: pad40),
//               child: Text(
//                 'Continue Watching',
//                 style: kTitle1Style,
//                 //textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ContinueWatchingScreen extends StatelessWidget {
  const ContinueWatchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(34.r),
      ),
      color: kCardPopupBackgroundColor,
      boxShadow: [
        BoxShadow(
          color: kShadowColor,
          offset: Offset(0, -12.0.h),
          blurRadius: 32.r,
        )
      ],
      minHeight: 85.h,
      maxHeight: screenHeight * 0.75,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 16.h),
              child: Container(
                height: 4.0,
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0.r),
                  color: const Color(0xFFC5CBD6),
                ),
              ),
            ),
          ),
          Padding(
            //margin: EdgeInsets.only(left: 12.w),
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Text(
              'Continue Watching',
              style: kTitle2Style,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0.h),
            child: const ContinueWatchingCourseList(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Text(
              'Certificates',
              style: kTitle2Style,
            ),
          ),
          const Expanded(
            child: CertificateViewer(),
          ),
        ],
      ),
    );
  }
}
