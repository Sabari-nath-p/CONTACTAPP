import 'package:contactapp/UserProfile/userProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => UserProfileScreen(), transition: Transition.rightToLeft);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6.35.w, vertical: 10),
        child: Column(
          children: [
            // remove the code of image and implement design cod
            //
            // write design code here
            //
            //

            Image.asset("assets/temp/nameCard.png"),
          ],
        ),
      ),
    );
  }
}
