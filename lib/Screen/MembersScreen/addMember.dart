import 'dart:ui';

import 'package:contactapp/Model/MemberModel.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Categories/Components/AddCategoryScreen.dart';

class AddMemberScreen extends StatelessWidget {
  AddMemberScreen({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController designation = TextEditingController();
  MainController ctrl = Get.put(MainController());
  addMember() {
    if (name.text.isEmpty && designation.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please fill all fields");
    } else {
      MemberModel memberModel = MemberModel(
          name: name.text,
          designation: designation.text,
          memberID: DateTime.now().toLocal().toString());

      ctrl.createUpdateMember(memberModel);
      Fluttertoast.showToast(msg: "Member created");
      ctrl.update();
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Team",
          isAdd: false,
          isBack: true,
          fn: () {}),
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
                controller: name,
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
                  controller: designation,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      isCollapsed: true,
                      hintText: "Designation",
                      hintStyle: GoogleFonts.karma(color: Color(0xffBF782B))),
                  style: GoogleFonts.karma(color: Color(0xffBF782B))),
            ),
            SizedBox(
              height: 3.h,
            ),
            InkWell(
              onTap: () {
                addMember();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffBF782B)),
                height: 4.61.h,
                width: 37.17.w,
                child: Text(
                  "ADD",
                  style: GoogleFonts.karma(
                      color: Color(0xffFFFFFF),
                      fontSize: 8.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
