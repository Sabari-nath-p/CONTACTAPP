import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Screen/UserProfile/userProfileScreen.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NameCard extends StatelessWidget {
  ProfileModel pmodel;
  NameCard({super.key, required this.pmodel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        MainController ctrl = Get.put(MainController());
        ctrl.deleteProfile(pmodel.profileID.toString());
      },
      onTap: () {
        Get.to(
            () => UserProfileScreen(
                  model: pmodel,
                ),
            transition: Transition.rightToLeft);
      },
      child: Container(
        height: 14.99.h,
        width: 85.85.w,
        decoration: BoxDecoration(
          color: Color.fromRGBO(237, 223, 209, 1),
          borderRadius: BorderRadius.circular(2.39.w),
        ),
        margin: EdgeInsets.symmetric(horizontal: 6.35.w, vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: 2.7.w,
            ),
            Container(
              height: 17.38.w,
              width: 17.38.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffA56219), width: 1),
                color: Color.fromRGBO(237, 223, 209, 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: (pmodel.profileImg == null)
                    ? Icon(Icons.person_2_outlined)
                    : Image.memory(
                        pmodel.profileImg!

                        /// "assets/image/profile.png",
                        ,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            SizedBox(
              width: 3.7.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "${pmodel.name}",
                    style: GoogleFonts.karma(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(165, 98, 25, 1)),
                  ),
                  SizedBox(height: .05.h),
                  Text(
                    pmodel.mobile!,
                    style: GoogleFonts.karma(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(165, 98, 25, 1)),
                  ),
                  SizedBox(height: .05.h),
                  Text(
                    pmodel.email!,
                    maxLines: 1,
                    style: GoogleFonts.karma(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(165, 98, 25, 1)),
                  ),
                  SizedBox(height: .05.h),
                  Text(
                    "Potential - ${pmodel.tag}",
                    style: GoogleFonts.karma(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(165, 98, 25, 1)),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2.25.h,
                  width: 6.12.w,
                  child: Image.asset("assets/image/arrowleft.png"),
                ),
                Expanded(child: Container()),
                Container(
                  height: 2.25.h,
                  width: 5.19.w,
                  child: Image.asset("assets/image/mailcheck.png"),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
