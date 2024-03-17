import 'package:contactapp/Model/TagModel.dart';
import 'package:contactapp/Screen/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';

class AddTagScreen extends StatefulWidget {
  const AddTagScreen({super.key});

  @override
  State<AddTagScreen> createState() => _AddTagScreenState();
}

class _AddTagScreenState extends State<AddTagScreen> {
  TextEditingController tagName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Tags",
          isAdd: false,
          isBack: true,
          fn: () {}),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5.0.h),
          Align(
              alignment: Alignment.center,
              child: EventTextField(tagName, "Tag Type")),
          SizedBox(height: 3.4.h),
          InkWell(
            onTap: () {
              MainController ctrl = Get.put(MainController());
              if (tagName.text.isEmpty) {
                Fluttertoast.showToast(msg: "Fill tag type");
              } else {
                TagModel tagModel = TagModel();
                tagModel.id = DateTime.now().toString();
                tagModel.tagName = tagName.text.trim();
                ctrl.createUpdateTag(tagModel);
                Fluttertoast.showToast(msg: "Tag Created");
                Get.back();
              }
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffBF782B)),
              height: 4.61.h,
              width: 37.17.w,
              child: Text(
                "Save",
                style: GoogleFonts.karma(
                    color: Color(0xffFFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
