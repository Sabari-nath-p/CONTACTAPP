import 'package:contactapp/Model/CategoryModel.dart';
import 'package:contactapp/Screen/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/main.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddCategoryScreen extends StatelessWidget {
  AddCategoryScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController desController = TextEditingController();
  MainController ctrl = Get.put(MainController());
  addCategory() {
    if (nameController.text.isEmpty || desController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please fill in all fields");
    } else {
      CategoryModel cm = CategoryModel(
        id: DateTime.now().toLocal().toString(),
        categoryName: nameController.text.trim(),
        description: desController.text.trim(),
      );

      ctrl.createUpdateCategory(cm);
      Fluttertoast.showToast(msg: "Category Created");
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Category",
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
            EventTextField(
              nameController,
              "Name",
              height: 5.10,
              cs: CrossAxisAlignment.start,
              al: Alignment.topLeft,
              width: 86.33,
            ),
            EventTextField(
              desController,
              "Description",
              cs: CrossAxisAlignment.start,
              al: Alignment.topLeft,
              height: 14.16,
              width: 86.33,
            ),
            InkWell(
              onTap: () {
                addCategory();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffBF782B)),
                margin: EdgeInsets.only(top: 3.h),
                height: 4.61.h,
                width: 37.17.w,
                child: Text(
                  "ADD",
                  style: GoogleFonts.karma(
                      color: Color(0xffFFFFFF),
                      fontSize: 10.sp,
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
