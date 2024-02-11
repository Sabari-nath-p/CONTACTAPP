<<<<<<< HEAD
import 'package:contactapp/MembersScreen/addMember.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
=======
import 'package:contactapp/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
>>>>>>> 713cc35cc1ec6bfb6f3466bf8a474adeb6d122db

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Category",
          isAdd: false,
          isBack: true,
          fn: () {
            Get.to(() => AddMemberScreen(), transition: Transition.rightToLeft);
          }),
      body: Column(),
=======
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add Category', style: GoogleFonts.karma(fontWeight: FontWeight.bold ,fontSize:10.81.sp),),
        backgroundColor: Color.fromRGBO(191, 120, 43, 1),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 6.470.h,
            ),
            Container(
              height: 4.10.h,
              width: 86.33.w,
              // margin: EdgeInsets.only(left: 2.w),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5.368.w),
              decoration: BoxDecoration(
                color: Color.fromRGBO(253, 244, 235, 1),
                borderRadius: BorderRadius.circular(1.1.w),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: InputBorder.none,
                  isDense: true,
                  hintStyle: GoogleFonts.karma(color: Color(0xffBF782B)),
                ),
                style: GoogleFonts.karma(color: Color(0xffBF782B)),
              ),
            ),
            Container(
              height: 10.16.h,
              width: 86.33.w,
              margin: EdgeInsets.only(top: 1.95.h),
              //  alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5.368.w, top: 5),
              decoration: BoxDecoration(
                color: Color.fromRGBO(253, 244, 235, 1),
                borderRadius: BorderRadius.circular(1.1.w),
              ),
              child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      isCollapsed: true,
                      hintText: "Description",
                      hintStyle: GoogleFonts.karma(color: Color(0xffBF782B))),
                  style: GoogleFonts.karma(color: Color(0xffBF782B))),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffBF782B)),
              margin: EdgeInsets.only(top: 3.h),
              height: 4.61.h,
              width: 37.17.w,
              child: Text(
                "ADD",
                style:GoogleFonts.karma(
                    color: Color(0xffFFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
>>>>>>> 713cc35cc1ec6bfb6f3466bf8a474adeb6d122db
    );
  }
}

