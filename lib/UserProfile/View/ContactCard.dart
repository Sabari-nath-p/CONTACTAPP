import 'package:contactapp/AddContact/components/ContactData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ContactDataScreen());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.35.w, vertical: 10),
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            // remove the code of image and implement design code
            //
            // write design code here
            //
            //

            Image.asset("assets/temp/userCard.png"),
          ],
        ),
      ),
    );
  }
}
