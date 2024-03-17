import 'package:animate_do/animate_do.dart';
import 'package:contactapp/Screen/Contacts/contactsScreen.dart';
import 'package:contactapp/Screen/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class EventListScreen extends StatefulWidget {
  EventListScreen({super.key});

  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  String SelectedYear = DateTime.now().year.toString();

  MainController ctrl = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Events",
          isAdd: true,
          fn: () {
            Get.to(() => AddEventScreen(), transition: Transition.rightToLeft);
          }),
      body: GetBuilder<MainController>(builder: (_) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 3.1.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Select The Event To Add Contact",
                  style: GoogleFonts.karma(
                      fontSize: 13.sp,
                      color: Color(0xffA56219),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Event Held Year :  ",
                    style: GoogleFonts.karma(
                        fontSize: 13.sp,
                        color: Color(0xffA56219),
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                      width: 33.89.w,
                      height: 4.49.h,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA56219)),
                      child: DropdownButton<String>(
                        isDense: true,
                        value: SelectedYear,
                        elevation: 0,
                        isExpanded: true,
                        underline: Container(),
                        icon: RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 16,
                              color: Colors.white,
                            )),
                        dropdownColor: Colors.transparent,
                        hint: Text(
                          "Select Year",
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        items: <String>['2024', '2025', '2026', '2027']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                                width: 33.89.w,
                                alignment: Alignment.center,
                                height: 4.49.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffA56219)),
                                child: Text(
                                  value,
                                  style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )),
                          );
                        }).toList(),
                        onChanged: (_) {
                          setState(() {
                            SelectedYear = _.toString();
                          });
                        },
                      )),
                ],
              ),
              SizedBox(
                height: 2.76.h,
              ),
              for (var data in ctrl.EventList)
                if (data.StartDate!.year.toString() == SelectedYear)
                  FadeIn(
                    child: InkWell(
                      onTap: () {
                        ctrl.selectedEvent = data;
                        Get.to(() => ContactScreen(),
                            transition: Transition.rightToLeft);
                      },
                      child: Container(
                        width: 90.76.w,
                        height: 4.4.h,
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.symmetric(horizontal: 3.59.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffFDF4EB)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${ctrl.EventList.indexOf(data)}  ",
                              style: GoogleFonts.karma(
                                  fontSize: 13.sp,
                                  color: Color(0xffA56219),
                                  fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: Text(
                                "${data.Name}",
                                style: GoogleFonts.karma(
                                    fontSize: 13.sp,
                                    color: Color(0xffA56219),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: Color(0xffA56219),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
            ],
          ),
        );
      }),
    );
  }
}
