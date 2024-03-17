import 'package:animate_do/animate_do.dart';
import 'package:contactapp/Screen/MembersScreen/addMember.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MembersScreen extends StatelessWidget {
  MembersScreen({super.key});
  MainController ctrl = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Teams",
          isAdd: true,
          isBack: true,
          fn: () {
            Get.to(() => AddMemberScreen(), transition: Transition.rightToLeft);
          }),
      body: GetBuilder<MainController>(builder: (context) {
        return Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                for (var data in ctrl.memberList) _ItemCard(data.name!),
              ],
            ),
          ),
        );
      }),
    );
  }
}

Widget _ItemCard(String name) {
  return FadeIn(
    child: Container(
      height: 5.3.h,
      margin: EdgeInsets.only(top: 2.h),
      width: 90.8.w,
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
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(191, 120, 43, 1)),
      ),
    ),
  );
}
