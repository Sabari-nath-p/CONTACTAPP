import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

CAappBar(
    {required BuildContext context,
    required String title,
    bool isAdd = false,
    bool isBack = false,
    var actionIcon = Icons.add,
    void fn()?}) {
  return AppBar(
    foregroundColor: Color(0xffBF782B),
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Visibility(
        visible: isBack,
        child: Icon(
          Icons.arrow_back_ios,
          size: 17.sp,
        ),
      ),
      color: Colors.white,
    ),
    title: Padding(
      padding: EdgeInsets.only(top: 1.2.h),
      child: Text(
        '$title',
        style: GoogleFonts.karma(
            color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.w700),
      ),
    ),
    backgroundColor: Color(0xffBF782B),
    centerTitle: true,
    actions: [
      if (isAdd)
        InkWell(
          onTap: () {
            fn!();
          },
          child: Icon(
            actionIcon,
            color: Colors.white,
          ),
        ),
      SizedBox(
        width: 10,
      )
    ],
  );
}
