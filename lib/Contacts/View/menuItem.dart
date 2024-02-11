import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

menuItem(String title, var icon) {
  return Container(
    height: 5.6.h,
    width: 90.w,
    margin: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
      color: Color(0xffBF782B),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 6.w,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: GoogleFonts.karma(
              fontSize: 13.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}
