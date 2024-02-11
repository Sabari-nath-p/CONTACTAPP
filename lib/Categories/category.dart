import 'package:contactapp/AddCategory/AddCategoryScreen.dart';
import 'package:contactapp/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
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
  get z => null;

  get horizontal => null;

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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Categories :',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBF782B),
                    ),
                  ),
                ),
<<<<<<< HEAD
                SizedBox(height: 1.0.h),
                _ItemCard("Palm"),
                _ItemCard("Wood"),
                _ItemCard("Bagasse")
=======
                SizedBox(height: 12.0.h),
                Container(
                  height: 8.5.h,
                  width: 196.8.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.1.w),
                    color: Color.fromRGBO(253, 244, 235, 1),
                  ),
                  child: const Text(
                    'palm',
                    style: TextStyle(
                        fontSize: 36.0, color: Color.fromRGBO(191, 120, 43, 1)),
                  ),
                ),
                SizedBox(height: 12.0.h),
                Container(
                  height: 8.5.h,
                  width: 196.8.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.1.w),
                    color: Color.fromRGBO(253, 244, 235, 1),
                  ),
                  child: const Text(
                    'Wood',
                    style: TextStyle(
                        fontSize: 36.0, color: Color.fromRGBO(191, 120, 43, 1)),
                  ),
                ),
                SizedBox(height: 12.0.h),
                Container(
                  height: 8.5.h,
                  width: 196.8.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.1.w),
                    color: Color.fromRGBO(253, 244, 235, 1),
                  ),
                  child: const Text(
                    'Bagasse',
                    style: TextStyle(
                        fontSize: 36.0, color: Color.fromRGBO(191, 120, 43, 1)),
                  ),
                ),
>>>>>>> 713cc35cc1ec6bfb6f3466bf8a474adeb6d122db
              ],
            ),
          ),
        )

        /* children: const [
          Positioned( 
          top: 149.0,
          left: 42.0,
          child: Text(
            'Categories :',
            style: TextStyle(
              fontSize: 36.0,
              color: Color(0xFFBF782B),
                 ),
             ),
          ),
        ]; */

        );
  }
}

Widget _ItemCard(String name) {
  return Container(
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
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(191, 120, 43, 1)),
    ),
  );
}
