import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.63.h,
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35), color: Color(0xffFDF4EB)),
      child: Column(
        children: [
          // remove this image and add code

          Image.asset("assets/temp/save.png"),
        ],
      ),
    );
  }
}
