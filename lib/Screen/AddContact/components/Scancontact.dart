import 'dart:ffi';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class Scancontact extends StatefulWidget {
  TextEditingController qrImage;
  TextEditingController frontImageCard;
  TextEditingController backImageCard;
  TextEditingController email;
  TextEditingController mobile;
  TextEditingController website;
  // TextEditingController company;

  ProfileModel? model;
  Scancontact(
      {Key? key,
      required this.backImageCard,
      required this.frontImageCard,
      required this.email,
      required this.mobile,
      required this.website,
      //  required this.company,
      this.model,
      required this.qrImage});

  @override
  State<Scancontact> createState() => _ScancontactState();
}

class _ScancontactState extends State<Scancontact> {
  int SelectedMenu = 1;
  MainController ctrl = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    String imageLink = "";
    Uint8List? img;
    if (SelectedMenu == 0)
      imageLink = widget.qrImage.text;
    else if (SelectedMenu == 1)
      imageLink = widget.frontImageCard.text;
    else if (SelectedMenu == 2) imageLink = widget.backImageCard.text;
    if (widget.model != null) {
      if (SelectedMenu == 0)
        img = widget.model!.QrImg!;
      else if (SelectedMenu == 1)
        img = widget.model!.frontCardId!;
      else if (SelectedMenu == 2) img = widget.model!.BackCardID!;
    }
    return Scaffold(
        appBar:
            CAappBar(context: context, title: "Capture Images", isBack: true),
        body: Padding(
          padding: EdgeInsets.fromLTRB(4.2.w, 3.04.h, 4.2.w, 6.93.h),
          child: Column(
            children: [
              Container(
                width: 100.w,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       SelectedMenu = 0;
                    //     });
                    //   },
                    //   child: _QrTopCard("QR card", "assets/image/scanqr.png",
                    //       SelectedMenu == 0),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          SelectedMenu = 1;
                        });
                      },
                      child: _QrTopCard("Front Contact Card",
                          "assets/image/scancontact.png", SelectedMenu == 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          SelectedMenu = 2;
                        });
                      },
                      child: _QrTopCard("Back Contact Card",
                          "assets/image/scancontact.png", SelectedMenu == 2),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                height: 33.60.h,
                width: 71.8.w,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.46),
                  color: Color(0xFFBF782B),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            'Cam Scan',
                            style: GoogleFonts.karma(
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            if (SelectedMenu == 0)
                              widget.qrImage.text = ""; //image.path;
                            else if (SelectedMenu == 1)
                              widget.frontImageCard.text = "";
                            else if (SelectedMenu == 2)
                              widget.backImageCard.text = "";
                            setState(() {});
                            ctrl.update();
                          },
                          child: Visibility(
                              visible: (imageLink != "" || img != null),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () async {
                            print("working");
                            final ImagePicker picker = ImagePicker();
                            // Pick an image.
                            final XFile? image = await picker.pickImage(
                                source: ImageSource.camera);

                            if (image != null) {
                              if (SelectedMenu == 0) {
                                widget.qrImage.text = image.path;
                              } else if (SelectedMenu == 1)
                                widget.frontImageCard.text = image.path;
                              else if (SelectedMenu == 2)
                                widget.backImageCard.text = image.path;
                              setState(() {});
                              ctrl.update();
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.w, bottom: 1.w),
                            child: Visibility(
                              visible: (imageLink != "" || img != null),
                              child: Image.asset(
                                "assets/image/reload.png",
                                color: Colors.white,
                                width: 15,
                                height: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.6.h,
                    ),
                    (imageLink == "")
                        ? (img != null)
                            ? Container(
                                width: 65.w,
                                height: 16.32.h,
                                padding: EdgeInsets.all(3.2.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.memory(
                                    img,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () async {
                                  print("working");
                                  final ImagePicker picker = ImagePicker();
                                  // Pick an image.
                                  final XFile? image = await picker.pickImage(
                                      source: ImageSource.camera);

                                  // final textRecognizer = TextRecognizer(
                                  //     script: TextRecognitionScript.latin);
                                  // final RecognizedText recognizedText =
                                  //     await textRecognizer.processImage(
                                  //         InputImage.fromFilePath(
                                  //             image!.path!));

                                  // String text = recognizedText.text;

                                  // for (var data in text.split("\n")) {
                                  //   if (data.contains("@")) {
                                  //     widget.email.text = data;
                                  //   } else if (data.contains("www.")) {
                                  //     widget.website.text = data;
                                  //     List<String> words = data.split(".");
                                  //     if (words[0].contains("www")) {}
                                  //   } else if ((data.contains("+") ||
                                  //           data.isNum) &&
                                  //       data.length > 9) {
                                  //     widget.mobile.text = data;
                                  //   }
                                  // }
                                  // Fluttertoast.showToast(
                                  //     msg: "Data Fetched Successfully");
                                  if (image != null) {
                                    if (SelectedMenu == 0) {
                                    }
                                    // widget.qrImage.text = image.path;
                                    else if (SelectedMenu == 1)
                                      widget.frontImageCard.text = image.path;
                                    else if (SelectedMenu == 2)
                                      widget.backImageCard.text = image.path;
                                    setState(() {});
                                  }
                                },
                                child: Center(
                                  child: Image.asset(
                                    "assets/image/Scanner.png",
                                    height: 13.54.h,
                                    width: 30.83.w,
                                  ),
                                ),
                              )
                        : Container(
                            width: 65.w,
                            height: 16.32.h,
                            padding: EdgeInsets.all(3.2.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(
                                  imageLink,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Widget _QrTopCard(String name, String image, bool isSelected) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.46),
      color: (isSelected) ? Color(0xffBF782B) : Color(0xFFFDF4EB),
    ),
    padding: EdgeInsets.symmetric(horizontal: 3.5.w, vertical: .91.w),
    height: 3.8.h,
    child: Row(
      children: [
        SizedBox(
          width: 4.2.w,
          child: Image.asset(
            image,
            color: (isSelected) ? Colors.white : Color(0xFFA56219),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          name,
          style: GoogleFonts.karma(
            fontWeight: FontWeight.w500,
            fontSize: 7.sp,
            color: (isSelected) ? Colors.white : Color(0xFFA56219),
          ),
        ),
      ],
    ),
  );
}
