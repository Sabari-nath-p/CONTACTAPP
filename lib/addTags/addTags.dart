import 'package:contactapp/AddCategory/AddCategoryScreen.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddTagScreen extends StatefulWidget {
  const AddTagScreen({super.key});

  @override
  State<AddTagScreen> createState() => _AddTagScreenState();
}

class _AddTagScreenState extends State<AddTagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Tags",
          isAdd: false,
          isBack: true,
          fn: () {
         
          }),
      body: Column(
        children: [
          SizedBox(height: 5.0.h),
          Container(
            margin: EdgeInsets.only(
              left: 1.5.w,
              right: 1.5.h,
            ),
            height: 7.7.h,
            width: 201.3.w,
            padding: EdgeInsets.only(left: 1.5.w, top: .5.h),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.1.w),
              color: Color.fromRGBO(253, 244, 235, 1),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Tag Type',
                  hintStyle: TextStyle(
                    fontSize: 21.6,
                    color: Color.fromRGBO(191, 120, 43, 1),
                  )),
            ),
          ),
          SizedBox(height: 9.4.h),
          Container(
            height: 4.4.h,
            width: 23.4.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.1.w),
              color: Color.fromRGBO(191, 120, 43, 1),
            ),
            child: Text(
              'Save',
              style: TextStyle(
                  fontSize: 20.0, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
