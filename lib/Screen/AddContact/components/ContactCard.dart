import 'dart:io';

import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Screen/AddContact/components/QRCard.dart';
import 'package:contactapp/Screen/AddContact/components/Scancontact.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class ContactCardScreen extends StatefulWidget {
  ProfileModel? model;
  TextEditingController qrImage;
  TextEditingController frontImageCard;
  TextEditingController backImageCard;
  TextEditingController email;
  TextEditingController mobile;
  TextEditingController website;
  TextEditingController company;
  TextEditingController name;

  ContactCardScreen(
      {Key? key,
      required this.backImageCard,
      required this.frontImageCard,
      this.model,
      required this.email,
      required this.company,
      required this.mobile,
      required this.name,
      required this.website,
      required this.qrImage})
      : super(key: key);

  @override
  State<ContactCardScreen> createState() => _ContactCardScreenState();
}

class _ContactCardScreenState extends State<ContactCardScreen> {
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
      if (SelectedMenu == 1 || SelectedMenu == 0)
        img = widget.model!.frontCardId!;
      else if (SelectedMenu == 2) img = widget.model!.BackCardID!;
    }
    return Container(
        height: 14.6.h,
        width: 92.2.w,
        decoration: BoxDecoration(
          color: Color(0xFFBF782B),
          borderRadius: BorderRadius.circular(6.46),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10.2.w,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (SelectedMenu >= 1) {
                    SelectedMenu = SelectedMenu - 1;
                  }
                });
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white30)),
              width: 55.51.w,
              height: 13.68.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: (imageLink == "")
                    ? (img == null)
                        ? InkWell(
                            onTap: () async {
                              final ImagePicker picker = ImagePicker();
                              // Pick an image.
                              final XFile? image = await picker.pickImage(
                                  source: ImageSource.camera);
                              Fluttertoast.showToast(
                                  msg: "Please wait image decoding");

                              final textRecognizer = TextRecognizer(
                                  script: TextRecognitionScript.latin);
                              final RecognizedText recognizedText =
                                  await textRecognizer.processImage(
                                      InputImage.fromFilePath(image!.path!));

                              String text = recognizedText.text;
                              widget.name.text = text.split("\n")[0];
                              for (var data in text.split("\n")) {
                                if (data.contains("@")) {
                                  RegExp regExp = RegExp(
                                      r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b',
                                      multiLine: true);
                                  Iterable<Match> matches =
                                      regExp.allMatches(text);

                                  List<String> emails = [];
                                  for (Match match in matches) {
                                    emails.add(match.group(0)!);
                                  }
                                  if (emails.length > 0)
                                    widget.email.text = emails.join(",");
                                } else if (data.contains("www.")) {
                                  widget.website.text = data;
                                  List<String> words = data.split(".");
                                  if (words[0].contains("www")) {
                                    widget.company.text = words[1];
                                  } else {
                                    widget.company.text = words[0];
                                  }
                                } else if ((data.contains("+") || data.isNum) &&
                                    data.length > 9) {
                                  RegExp regExp = RegExp(
                                      r'(\+\d{1,3}[\s.-]?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}',
                                      multiLine: true);
                                  Iterable<Match> matches =
                                      regExp.allMatches(text);

                                  List<String> phoneNumbers = [];
                                  for (Match match in matches) {
                                    phoneNumbers.add(match.group(0)!);
                                  }

                                  if (phoneNumbers.length > 0)
                                    widget.mobile.text = phoneNumbers.join(",");
                                }
                              }
                              Fluttertoast.showToast(
                                  msg: "Date fetched successfully");
                            },
                            child: Image.asset(
                              "assets/image/Scanner.png",
                              //    color: Colors.white,
                              width: 15,
                              height: 15,
                            ),
                          )
                        : Image.memory(
                            img,
                            fit: BoxFit.cover,

                            //    color: Colors.white,
                            width: 15,
                            height: 15,
                          )
                    : Image.file(
                        File(imageLink),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (SelectedMenu <= 1) {
                    SelectedMenu = SelectedMenu + 1;
                  }
                });
              },
              child: RotatedBox(
                quarterTurns: 2,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(child: Container()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.model != null)
                  InkWell(
                    onTap: () {
                      Fluttertoast.showToast(msg: "Profile Delete");
                      ctrl.deleteProfile(widget.model!.profileID!);
                      ctrl.update();
                      Get.back();
                      Get.back();
                    },
                    child: Icon(
                      Icons.delete_outline_rounded,
                      size: 6.5.w,
                      color: Colors.white,
                    ),
                  ),
                SizedBox(
                  height: 1.5.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                        () => Scancontact(
                              frontImageCard: widget.frontImageCard,
                              qrImage: widget.qrImage,
                              backImageCard: widget.backImageCard,
                              model: widget.model,
                              email: widget.email,
                              website: widget.website,
                              mobile: widget.mobile,
                            ),
                        transition: Transition.rightToLeft);
                  },
                  child: Icon(
                    Icons.add,
                    size: 6.5.w,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ));
  }
}
