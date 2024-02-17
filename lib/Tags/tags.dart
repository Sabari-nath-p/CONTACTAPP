import 'package:contactapp/addTags/addTags.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../AddCategory/AddCategoryScreen.dart';

class TagScreen extends StatelessWidget {
  const TagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Tags",
          isAdd: true,
          isBack: true,
          fn: () {
            Get.to(() => AddTagScreen(), transition: Transition.rightToLeft);
          }),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_ItemCard("High"), _ItemCard("Medium")],
        ),
      ),
    );
  }
}

Widget _ItemCard(String name) {
  return Container(
    margin: EdgeInsets.only(top: 2.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5.3.h,
          width: 75.8.w,
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(253, 244, 235, 1),
          ),
          child: Text(
            '$name',
            style: GoogleFonts.karma(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(191, 120, 43, 1)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: 5.2.h,
          height: 5.2.h,
          child: Icon(
            Icons.delete_outline_outlined,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Color(0xffBE0000)),
        )
      ],
    ),
  );
}
