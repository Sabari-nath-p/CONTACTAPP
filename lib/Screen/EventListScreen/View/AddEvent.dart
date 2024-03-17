import 'dart:math';

import 'package:contactapp/Model/EventModel.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/main.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  TextEditingController eventNameCtrl = TextEditingController();
  TextEditingController locationCtrl = TextEditingController();
  TextEditingController startDateCtrl = TextEditingController();
  TextEditingController endDateCtrl = TextEditingController();
  TextEditingController attendedByCtrl = TextEditingController();

  MainController ctrl = Get.put(MainController());

  addEvent() {
    if (eventNameCtrl.text.isEmpty ||
        locationCtrl.text.isEmpty ||
        startDateCtrl.text.isEmpty ||
        endDateCtrl.text.isEmpty ||
        attendedByCtrl.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Please fill in all fields",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      // All fields are filled, you can proceed with further actions
      // For example, you can access the data using the TextEditingController objects
      EventModel event = EventModel(
          location: locationCtrl.text,
          StartDate: DateTime.parse(startDateCtrl.text),
          EndDate: DateTime.parse(endDateCtrl.text),
          attendedBy: attendedByCtrl.text,
          Name: eventNameCtrl.text,
          id: DateTime.now().toLocal().toString());

      ctrl.createUpdateEvent(event);
      Fluttertoast.showToast(msg: "Event Created");
      Get.back();
      // Now you can use this data for further processing
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Events",
          isBack: true,
          isAdd: false,
          fn: () {
            Get.to(() => AddEventScreen(), transition: Transition.rightToLeft);
          }),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2.h, // Optional: Height of the SizedBox
              ),

              /// code changed
              ///
              ///
              ///
              ///
              ///
              ///
              EventTextField(eventNameCtrl, "Event Name",
                  icon: SizedBox(
                    width: 5.w,
                    child: Image.asset("assets/image/ferris-wheel.png"),
                  )),
              EventTextField(locationCtrl, "Location",
                  icon: Icon(
                    Icons.location_on,
                    color: Color(0xffA56219).withOpacity(.8),
                    size: 5.w,
                  )),
              InkWell(
                onTap: () async {
                  DateTime? dt = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 625)));

                  if (dt != null) {
                    startDateCtrl.text = DateFormat("yyyy-MM-dd").format(dt);
                    setState(() {});
                  }
                },
                child: EventTextField(startDateCtrl, "Start Date",
                    icon: Icon(
                      Icons.date_range_outlined,
                      color: Color(0xffA56219).withOpacity(.8),
                      size: 5.w,
                    ),
                    isTypeAble: false),
              ),

              InkWell(
                onTap: () async {
                  print(DateTime.now());
                  DateTime? dt = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 625)));

                  if (dt != null) {
                    endDateCtrl.text = DateFormat("yyyy-MM-dd").format(dt);
                    setState(() {});
                  }
                },
                child: EventTextField(endDateCtrl, "End Date",
                    icon: Icon(
                      Icons.date_range_outlined,
                      color: Color(0xffA56219).withOpacity(.8),
                      size: 5.w,
                    ),
                    isTypeAble: false),
              ),

              EventTextField(attendedByCtrl, "Attended By",
                  icon: Icon(
                    Icons.person,
                    color: Color(0xffA56219).withOpacity(.8),
                    size: 5.w,
                  )),

              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        addEvent();
                      },
                      child: Container(
                        height: 4.2.h,
                        width: 22.42.w,
                        alignment: Alignment.center,
                        //   margin: EdgeInsetsDirectional.only(end: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFBF782B),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.karma(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        eventNameCtrl.clear();
                        locationCtrl.clear();
                        startDateCtrl.clear();
                        endDateCtrl.clear();
                        attendedByCtrl.clear();
                      },
                      child: Container(
                        height: 4.2.h,
                        width: 22.42.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xFFBF782B),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                          'RESET',
                          style: GoogleFonts.karma(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget EventTextField(TextEditingController ctrl, String name,
    {var icon = null,
    double width = 86.33,
    double height = 5.2,
    CrossAxisAlignment cs = CrossAxisAlignment.center,
    Alignment al = Alignment.centerLeft,
    TextInputType type = TextInputType.name,
    bool isTypeAble = true}) {
  return Container(
    //  margin: EdgeInsets.only(bottom: 5),
    height: height.h,

    alignment: al,
    margin: EdgeInsets.symmetric(vertical: .53.h),
    padding: EdgeInsets.symmetric(
      horizontal: 1.8.w,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Color(0xffFFDF4EB)),
    width: width.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 2,
        ),
        if (icon != null) icon,
        if (icon != null)
          SizedBox(
            width: 8,
          ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: .8.h),
            child: TextField(
              controller: ctrl,
              keyboardType: type,
              enabled: isTypeAble,
              expands: true,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              textAlign: TextAlign.start,
              style: GoogleFonts.karma(
                color: Color(0xffA56219),
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
              decoration: InputDecoration(
                hintText: name,
                isDense: true,
                isCollapsed: true,
                hintStyle: GoogleFonts.karma(
                  color: Color(0xffA56219).withOpacity(.8),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.2.sp,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
