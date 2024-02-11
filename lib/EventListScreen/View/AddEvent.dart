import 'package:contactapp/main.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
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
              EventTextField(
                  "Event Name",
                  SizedBox(
                    width: 5.w,
                    child: Image.asset("assets/image/ferris-wheel.png"),
                  )),
              EventTextField(
                  "Location",
                  Icon(
                    Icons.location_on,
                    color: Color(0xffA56219).withOpacity(.8),
                    size: 5.w,
                  )),
              EventTextField(
                  "Start Date",
                  Icon(
                    Icons.date_range_outlined,
                    color: Color(0xffA56219).withOpacity(.8),
                    size: 5.w,
                  )),

              EventTextField(
                  "End Date",
                  Icon(
                    Icons.date_range_outlined,
                    color: Color(0xffA56219).withOpacity(.8),
                    size: 5.w,
                  )),

              EventTextField(
                  "Attended By",
                  Icon(
                    Icons.person,
                    color: Color(0xffA56219).withOpacity(.8),
                    size: 5.w,
                  )),

              /// code change ended
              ///
              ///
              ///
              ///
              ///

              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
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
                      onTap: () {},
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

Widget EventTextField(String name, Widget icon, {double width = 86.33}) {
  return Container(
    //  margin: EdgeInsets.only(bottom: 5),
    height: 5.2.h,

    alignment: Alignment.centerLeft,
    margin: EdgeInsets.symmetric(vertical: .53.h),
    padding: EdgeInsets.symmetric(
      horizontal: 1.8.w,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Color(0xffFFDF4EB)),
    width: width.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 2,
        ),
        icon,
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: .8.h),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
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
