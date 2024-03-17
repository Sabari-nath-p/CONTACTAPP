import 'dart:io';
import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Screen/AddContact/components/ContactCard.dart';
import 'package:contactapp/Screen/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/Service/MainController.dart';
import 'package:contactapp/main.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class ContactDataScreen extends StatefulWidget {
  ProfileModel? model;
  ContactDataScreen({super.key, this.model});

  @override
  State<ContactDataScreen> createState() =>
      _ContactDataScreenState(model: model);
}

class _ContactDataScreenState extends State<ContactDataScreen> {
  ProfileModel? model;
  _ContactDataScreenState({this.model});
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController website = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController subCategory = TextEditingController();
  TextEditingController sheduleMeeting = TextEditingController();
  TextEditingController tag = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController profileImage = TextEditingController();
  TextEditingController qrImage = TextEditingController();
  TextEditingController frontImageCard = TextEditingController();
  TextEditingController backImageCard = TextEditingController();
  bool profileVisible = false;

  addProfile() async {
    List<TextEditingController> controllers = (widget.model != null)
        ? [
            name,
            phone,
            email,
            website,
            company,
            category,
            sheduleMeeting,
            tag,
            notes,
            designation,
          ]
        : [
            name,
            phone,
            email,
            website,
            company,
            category,
            sheduleMeeting,
            tag,
            notes,
            designation,
            profileImage,
            frontImageCard,
            backImageCard
          ];

    if (isAnyTextFieldEmpty(controllers)) {
      Fluttertoast.showToast(msg: "Please fill in all fields");
    } else {
      ProfileModel model = ProfileModel();
      model.name = name.text.trim();
      model.mobile = phone.text.trim();
      model.email = email.text.trim();
      model.website = website.text.trim();
      model.company = company.text.trim();
      model.category = category.text.trim();
      model.meeting = subCategory.text.trim();

      model.sheduleMeeting = DateTime.parse(sheduleMeeting.text.trim());
      model.tag = tag.text.trim();
      model.notes = notes.text.trim();
      model.designation = designation.text.trim();
      if (qrImage.text.isNotEmpty)
        model.QrImg = await FiletoPath(qrImage.text.trim());
      else if (widget.model != null) {
        model.QrImg = widget.model!.QrImg;
      }
      if (profileImage.text.isNotEmpty)
        model.profileImg = await FiletoPath(profileImage.text.toString());
      else if (widget.model != null) {
        model.profileImg = widget.model!.profileImg;
      }
      if (frontImageCard.text.isNotEmpty)
        model.frontCardId = await FiletoPath(frontImageCard.text.trim());
      else if (widget.model != null) {
        model.frontCardId = widget.model!.frontCardId;
      }
      if (backImageCard.text.isNotEmpty)
        model.BackCardID = await FiletoPath(backImageCard.text.trim());
      else if (widget.model != null) {
        model.BackCardID = widget.model!.BackCardID;
      }
      if (widget.model == null)
        model.profileID = DateTime.now().toLocal().toString();
      else
        model.profileID = widget.model!.profileID;
      model.eventId = ctrl.selectedEvent!.id.toString();

      ctrl.createUpdateProfile(model);
      if (widget.model == null) {
        Fluttertoast.showToast(msg: "Profile Created");
      } else {
        Fluttertoast.showToast(msg: "Profile Updated");
      }

      widget.model = model;
      ctrl.update();
      Get.back();
      // None of the text fields are empty
    }
  }

  Future<Uint8List?> FiletoPath(String filePath) async {
    try {
      // Open the file
      File file = File(filePath);

      // Read the file as bytes
      List<int> bytes = await file.readAsBytes();

      // Convert the bytes to Uint8List
      Uint8List uint8List = Uint8List.fromList(bytes);

      return uint8List;
    } catch (e) {
      print('Error reading file: $e');
      return null;
    }
  }

  bool isAnyTextFieldEmpty(List<TextEditingController> controllers) {
    for (var controller in controllers) {
      if (controller.text.trim().isEmpty) {
        return true;
      }
    }
    return false;
  }

  MainController ctrl = Get.put(MainController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileVisible = model == null;
    if (model != null) {
      assignValue();
    }
  }

  assignValue() {
    name.text = model!.name ?? '';
    phone.text = model!.mobile ?? '';
    email.text = model!.email ?? '';
    company.text = model!.company ?? '';
    category.text = model!.category ?? '';
    subCategory.text = model!.meeting ?? '';
    sheduleMeeting.text =
        model!.sheduleMeeting != null ? model!.sheduleMeeting.toString() : '';
    tag.text = model!.tag ?? '';
    notes.text = model!.notes ?? '';
    designation.text = model!.designation ?? '';
    website.text = model!.website ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context, title: "Add Contact", isBack: true, isAdd: false),
      body: Padding(
        padding: EdgeInsets.fromLTRB(4.2.w, 2.h, 4.2.w, 0),
        child: GetBuilder<MainController>(builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ContactCardScreen(
                  frontImageCard: frontImageCard,
                  qrImage: qrImage,
                  name: name,
                  backImageCard: backImageCard,
                  model: model,
                  email: email,
                  company: company,
                  mobile: phone,
                  website: website,
                ),
                if (!profileVisible)
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          profileVisible = !profileVisible;
                        });
                      },
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xffA56219),
                      ),
                    ),
                  ),
                if (profileVisible)
                  FadeInRight(
                    child: Container(
                      margin: EdgeInsets.only(top: 1.4.h),
                      height: 12.6.h,
                      width: 92.2.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFBF782B).withOpacity(.38),
                        borderRadius: BorderRadius.circular(6.46),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (profileImage.text.isNotEmpty)
                                Container(
                                  width: 18.16.w,
                                  height: 18.16.w,
                                  //  padding: EdgeInsets.all(2.8.w),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.file(
                                      File(profileImage.text),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFDF4EB),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xffBF782B),
                                          width: 1.5)),
                                )
                              else if (model != null)
                                Container(
                                  width: 18.16.w,
                                  height: 18.16.w,
                                  //  padding: EdgeInsets.all(2.8.w),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.memory(
                                      model!.profileImg!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFDF4EB),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xffBF782B),
                                          width: 1.5)),
                                ),
                              SizedBox(
                                width: 8.w,
                              ),
                              InkWell(
                                onTap: () async {
                                  final ImagePicker picker = ImagePicker();
                                  // Pick an image.
                                  final XFile? image = await picker.pickImage(
                                      source: ImageSource.camera);

                                  if (image != null) {
                                    profileImage.text = image.path;
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  width: 18.16.w,
                                  height: 18.16.w,
                                  padding: EdgeInsets.all(2.8.w),
                                  child: Image.asset("assets/image/selfie.png"),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFDF4EB),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xffBF782B),
                                          width: 1.5)),
                                ),
                              ),
                            ],
                          )),
                          InkWell(
                            onTap: () {
                              setState(() {
                                profileVisible = false; //!profileVisible;
                              });
                            },
                            child: SizedBox(
                              width: 10,
                              child: Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xffA56219),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            // child: Icon(Icons.remove_red_eye),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  height: 2.74.h,
                ),
                EventTextField(name, 'Name', width: 92),
                EventTextField(phone, 'Phone',
                    width: 92, type: TextInputType.phone),
                EventTextField(email, 'Email', width: 92),
                EventTextField(website, 'Website', width: 92),
                EventTextField(company, 'Company', width: 92.w),
                Row(
                  children: [
                    Expanded(
                        child: inputiconfield(
                            'Select Category',
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFFA56219),
                              size: 3.27.w,
                            ),
                            ctrl.categoryList
                                .map((e) => e.categoryName!)
                                .toList(),
                            category)),
                    SizedBox(
                      width: 1.91.w,
                    ),
                    Expanded(
                        child: inputiconfield(
                            'Select Team',
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFFA56219),
                              size: 3.27.w,
                            ),
                            ctrl.memberList
                                .map((e) => e.name.toString())
                                .toList(),
                            subCategory))
                  ],
                ),
                InkWell(
                  onTap: () async {
                    DateTime? dt = await showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2050));

                    TimeOfDay? td = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());

                    if (dt != null && td != null) {
                      DateTime combinedDateTime = DateTime(
                        dt.year,
                        dt.month,
                        dt.day,
                        td.hour,
                        td.minute,
                      );

                      sheduleMeeting.text = DateFormat("yyyy-MM-dd HH:MM")
                          .format(combinedDateTime);
                      setState(() {});
                    }
                  },
                  child: EventTextField(sheduleMeeting, 'Scheduled Meeting',
                      width: 92.w, isTypeAble: false),
                ),
                inputiconfield(
                    'Select Tag',
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFFA56219),
                      size: 3.27.w,
                    ),
                    ctrl.tagList.map((e) => e.tagName!).toList(),
                    tag),
                EventTextField(notes, "Notes",
                    width: 92, height: 10, al: Alignment.topLeft),
                EventTextField(designation, 'Designation', width: 92),
                SizedBox(
                  height: 2.h,
                ),
                InkWell(
                  onTap: () {
                    print(DateTime.now());
                    addProfile();
                  },
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
                  height: 10,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  inputiconfield(String name, Icon icon, List<String> list,
      TextEditingController controller) {
    return Container(
        height: 5.1.h,
        width: 92.17.w,
        margin: EdgeInsets.symmetric(vertical: .53.h),
        padding: EdgeInsets.symmetric(horizontal: 2.5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Color(0xFFFDF4EB)),
        child: DropdownButton<String>(
            value: controller.text.isEmpty ? null : controller.text,
            underline: Container(),
            isExpanded: true,
            hint: Text(
              name,
              style: GoogleFonts.karma(
                color: Color(0xFFA56219),
                fontWeight: FontWeight.w500,
                fontSize: 10.80.sp,
              ),
            ),
            items: list
                .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: GoogleFonts.karma(
                        color: Color(0xFFA56219),
                        fontWeight: FontWeight.w500,
                        fontSize: 10.80.sp,
                      ),
                    )))
                .toList(),
            onChanged: (Value) {
              MainController ctrl = Get.put(MainController());
              controller.text = Value.toString();
              ctrl.update();
            }));
  }
}
