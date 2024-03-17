import 'package:animate_do/animate_do.dart';
import 'package:contactapp/Screen/Tags/Components/addTags.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Categories/Components/AddCategoryScreen.dart';

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
        alignment: Alignment.topCenter,
        child: GetBuilder<MainController>(builder: (_) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var data in _.tagList)
                  FadeIn(child: _ItemCard(data.tagName!, data.id!))
              ],
            ),
          );
        }),
      ),
    );
  }
}

Widget _ItemCard(String name, String id) {
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
        InkWell(
          onTap: () {
            MainController ctrl = Get.put(MainController());
            ctrl.deleteTag(id);
            Fluttertoast.showToast(msg: "Tag Deleted");
          },
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: 5.2.h,
            height: 5.2.h,
            child: Icon(
              Icons.delete_outline_outlined,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffBE0000)),
          ),
        )
      ],
    ),
  );
}
