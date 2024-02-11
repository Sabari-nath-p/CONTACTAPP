import 'package:contactapp/AddContact/components/ContactData.dart';
import 'package:contactapp/AddContact/components/ProfileCard.dart';
import 'package:contactapp/Categories/category.dart';
import 'package:contactapp/Contacts/View/NameCard.dart';
import 'package:contactapp/Contacts/View/ShareBottomSheet.dart';
import 'package:contactapp/Contacts/View/menuItem.dart';
import 'package:contactapp/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/MembersScreen/MembersScreen.dart';
import 'package:contactapp/Tags/tags.dart';
import 'package:contactapp/UserProfile/userProfileScreen.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

bool isMenu = false;

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isMenu) {
          isMenu = false;
          setState(() {});
        } else {
          Get.back();
        }
        return false;
      },
      child: Scaffold(
        appBar: CAappBar(
            context: context,
            title: "Contacts",
            isAdd: true,
            isBack: true,
            actionIcon: Icons.settings,
            fn: () {
              // Get.to(() => AddEventScreen(), transition: Transition.rightToLeft);
              setState(() {
                isMenu = !isMenu;
              });
            }),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SizedBox(
                    height: 3.1.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Your Adding to the Event :",
                      style: GoogleFonts.karma(
                          fontSize: 13.sp,
                          color: Color(0xffA56219),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: .8.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Int’s Hotel Motel Show",
                      style: GoogleFonts.karma(
                          fontSize: 16.sp,
                          color: Color(0xffA56219),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Year  : 2024",
                      style: GoogleFonts.karma(
                          fontSize: 12.sp,
                          color: Color(0xffA56219),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 2.w),
                    child: Row(
                      children: [
                        Container(
                          width: 12.w,
                          height: 5.0.h,
                          alignment: Alignment.center,
                          child: Text(
                            "All",
                            style: GoogleFonts.karma(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffA56219)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        EventTextField(
                            "Search",
                            Icon(
                              Icons.search,
                              color: Color(0xffA56219).withOpacity(.8),
                              size: 5.w,
                            ),
                            width: 75),
                      ],
                    ),
                  ),
                  NameCard(),
                  NameCard()
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: (!isMenu) ? 0 : 22.5.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: .5,
                          blurRadius: 1)
                    ],
                    color: Color(0xffFFDF4EB).withOpacity(.8),
                  ),
                  padding: EdgeInsets.only(top: 2.h),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                isMenu = false;
                              });
                              Get.to(() => categoryScreen(),
                                  transition: Transition.rightToLeft);
                            },
                            child: menuItem("Category", Icons.menu_outlined)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                isMenu = false;
                              });
                              Get.to(() => TagScreen(),
                                  transition: Transition.rightToLeft);
                            },
                            child: menuItem("Tags", Icons.tag)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                isMenu = false;
                              });
                              Get.to(() => MembersScreen(),
                                  transition: Transition.rightToLeft);
                            },
                            child: menuItem("Team", Icons.group)),
                      ],
                    ),
                  ),
                )),
            Positioned(
                bottom: 30,
                right: 20,
                left: 20,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (ctx) => ShareBottomSheet());
                      },
                      child: Container(
                        width: 28.66.w,
                        height: 4.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffBF782B)),
                        child: Text(
                          "Export Contacts",
                          style: GoogleFonts.karma(
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 22.66.w,
                      height: 4.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffBF782B)),
                      child: Text(
                        "Send Email",
                        style: GoogleFonts.karma(
                            fontSize: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () {
                        print("click");
                        Get.to(() => ContactDataScreen(),
                            transition: Transition.rightToLeft);
                      },
                      child: Container(
                        width: 10.31.w,
                        height: 10.31.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffBF782B)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
