import 'dart:math';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CertificateViewer extends StatefulWidget {
  const CertificateViewer({Key? key}) : super(key: key);

  @override
  _CertificateViewerState createState() => _CertificateViewerState();
}

class _CertificateViewerState extends State<CertificateViewer> {
  List<String> certificatePaths = [
    'asset/certificates/certificate-01.png',
    'asset/certificates/certificate-02.png',
    'asset/certificates/certificate-03.png',
  ];

  Widget? certificateViewer;

  @override
  void initState() {
    super.initState();

    List<Widget> imageChildren = [];

    certificatePaths.reversed.toList().asMap().forEach((index, certificate) {
      int angleDegree;

      if (index == certificatePaths.length - 1) {
        angleDegree = 0;
      } else {
        angleDegree = Random().nextInt(10) - 5;
      }
      imageChildren.add(
        Positioned(
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: angleDegree * (pi / 180),
            child: Image.asset(
              certificate,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    });

    certificateViewer = Stack(
      clipBehavior: Clip.none,
      children: imageChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: certificateViewer,
    );
  }
}
