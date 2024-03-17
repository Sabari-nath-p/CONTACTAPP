import 'dart:typed_data';

import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Screen/AddContact/components/ContactData.dart';
import 'package:contactapp/Screen/Contacts/contactsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ContactCard extends StatefulWidget {
  ProfileModel pmodel;
  ContactCard({super.key, required this.pmodel});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  int SelectedMenu = 1; //pmodel.QrImg != null) ? 1 : 0;

  @override
  Widget build(BuildContext context) {
    Uint8List? imageLink;
    if (SelectedMenu == 1 || SelectedMenu == 0)
      imageLink = widget.pmodel.frontCardId!;
    else if (SelectedMenu == 2) imageLink = widget.pmodel.BackCardID!;
    return Padding(
      padding: EdgeInsets.fromLTRB(3.w, 2.5.h, 0, 0),
      child: Container(
        width: 95.w,
        decoration: BoxDecoration(
          color: Color(0xffBF782B).withOpacity(0.28),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 2.w),
              width: 50.5.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 16.2.w,
                            height: 16.2.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFFDF4EB),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2, color: Color(0xFFBF782B))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.memory(
                                widget.pmodel.profileImg!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.pmodel.name!,
                          style: GoogleFonts.karma(
                              color: Color(0xffA56219),
                              fontSize: 8.4.sp,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    _ItemCard("Mobile", widget.pmodel.mobile!),
                    _ItemCard("Email", widget.pmodel.email!),
                    _ItemCard("Category", widget.pmodel.category!),
                    _ItemCard("Potential", widget.pmodel.tag!)
                  ]),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        width: 37.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffA56219), width: 0.15.w),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.memory(
                            imageLink!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 32.6.w,
                        height: 1.5.h,
                        decoration: BoxDecoration(
                            color: Color(0xffBF782B),
                            borderRadius: BorderRadius.circular(2)),
                        child: Row(
                          children: [
                            SizedBox(width: 3.w),
                            InkWell(
                              onTap: () {
                                if (SelectedMenu >= 1) {
                                  SelectedMenu = SelectedMenu - 1;
                                }
                                setState(() {});
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 3.w,
                              ),
                            ),
                            Expanded(child: Container()),
                            InkWell(
                              onTap: () {
                                if (SelectedMenu <= 1) {
                                  SelectedMenu = SelectedMenu + 1;
                                }
                                setState(() {});
                              },
                              child: RotatedBox(
                                quarterTurns: 2,
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                  size: 3.w,
                                ),
                              ),
                            ),
                            SizedBox(width: 3.w),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  _RItemCard(
                    "Company",
                    widget.pmodel.company!,
                  ),
                  _RItemCard(
                    "Designation",
                    widget.pmodel.designation!,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => ContactDataScreen(
                          model: widget.pmodel,
                        ),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      size: 4.4.w,
                      color: Color(0xffA56219),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 2.w,
            )
          ],
        ),
      ),
    );
  }
}

Widget _ItemCard(String title, String name) {
  return Container(
    margin: EdgeInsets.only(top: .6.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 16.w,
          child: Text(
            "$title :",
            style: GoogleFonts.karma(
                color: Color(0xffA56219),
                fontSize: 8.4.sp,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
          ),
        ),
        Expanded(
          child: Text(
            " ${name}",
            style: GoogleFonts.karma(
                color: Color(0xffA56219),
                fontSize: 8.4.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    ),
  );
}

Widget _RItemCard(String title, String name) {
  return Container(
    margin: EdgeInsets.only(top: .6.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 16.w,
            child: Text(
              "$title :",
              style: GoogleFonts.karma(
                  color: Color(0xffA56219),
                  fontSize: 8.4.sp,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Text(
          " ${name}",
          style: GoogleFonts.karma(
              color: Color(0xffA56219),
              fontSize: 8.4.sp,
              fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
