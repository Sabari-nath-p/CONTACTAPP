import 'dart:io';
import 'dart:typed_data';

import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:excel/excel.dart';

class ShareBottomSheet extends StatefulWidget {
  const ShareBottomSheet({super.key});

  @override
  State<ShareBottomSheet> createState() => _ShareBottomSheetState();
}

class _ShareBottomSheetState extends State<ShareBottomSheet> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // CreateExcel();
  }

 

  File? file;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.14.h,
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35), color: Color(0xffFDF4EB)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 17.h,
              ),
              Text(
                "Export File To",
                style: GoogleFonts.karma(
                    color: Color(0xffA56219),
                    fontSize: 10.6.sp,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              Expanded(child: Container()),
              CircleAvatar(
                  backgroundColor: Color(0xffA56219),
                  radius: 2.3.w,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 3.5.w,
                  )),
              SizedBox(
                width: 3.h,
              ),
            ],
          ),

          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Column(
                children: [
                  SizedBox(
                      width: 8.8.w,
                      height: 3.4.h,
                      child: Image.asset(
                        "assets/image/whatsapp.png",
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Whatsapp",
                    style: GoogleFonts.karma(
                        color: Color(0xffA56219),
                        fontSize: 8.6.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                children: [
                  SizedBox(
                      width: 8.8.w,
                      height: 3.4.h,
                      child: Image.asset(
                        "assets/image/email.png",
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Email",
                    style: GoogleFonts.karma(
                        color: Color(0xffA56219),
                        fontSize: 8.6.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                children: [
                  SizedBox(
                      width: 8.8.w,
                      height: 3.4.h,
                      child: Image.asset(
                        "assets/image/phone.png",
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Phone",
                    style: GoogleFonts.karma(
                        color: Color(0xffA56219),
                        fontSize: 8.6.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                children: [
                  SizedBox(
                      width: 8.8.w,
                      height: 3.4.h,
                      child: Image.asset(
                        "assets/image/drive.png",
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Drive",
                    style: GoogleFonts.karma(
                        color: Color(0xffA56219),
                        fontSize: 8.6.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: 4.h,
          ),
          // remove this image and add code
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 84.3.w,
              height: 4.6.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff884C0B).withOpacity(0.2)),
              child: Row(
                children: [
                  SizedBox(
                    width: 3.w,
                  ),
                  Icon(
                    Icons.file_download_outlined,
                    color: Color(0xffA56219),
                    size: 7.w,
                    weight: 1,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "Saved As Filetoday20.Xml",
                    style: GoogleFonts.karma(
                        color: Color(0xffA56219),
                        fontSize: 10.6.sp,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
