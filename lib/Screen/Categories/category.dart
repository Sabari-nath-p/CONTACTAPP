import 'package:animate_do/animate_do.dart';
import 'package:contactapp/Screen/Categories/Components/AddCategoryScreen.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
  MainController ctrl = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CAappBar(
            context: context,
            title: "Category",
            isAdd: true,
            isBack: true,
            fn: () {
              Get.to(() => AddCategoryScreen(),
                  transition: Transition.rightToLeft);
            }),
        body: Padding(
          padding: EdgeInsets.all(4.2.w),
          child: GetBuilder<MainController>(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Categories :',
                    style: GoogleFonts.karma(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFBF782B),
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  for (var data in ctrl.categoryList)
                    _ItemCard(data.categoryName!),
                ],
              ),
            );
          }),
        ));
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
