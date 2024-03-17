import 'package:contactapp/Model/CategoryModel.dart';
import 'package:contactapp/Model/EventModel.dart';
import 'package:contactapp/Model/MemberModel.dart';
import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Model/TagModel.dart';
import 'package:contactapp/Screen/EventListScreen/EventListScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

double width = 8.34;
double height = 15.39;
double fontsize = 3.33;

void main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(EventModelAdapter().typeId)) {
    Hive.registerAdapter(EventModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CategoryModelAdapter().typeId)) {
    Hive.registerAdapter(CategoryModelAdapter());
  }
  if (!Hive.isAdapterRegistered(TagModelAdapter().typeId)) {
    Hive.registerAdapter(TagModelAdapter());
  }

  if (!Hive.isAdapterRegistered(ProfileModelAdapter().typeId)) {
    Hive.registerAdapter(ProfileModelAdapter());
  }

  if (!Hive.isAdapterRegistered(MemberModelAdapter().typeId)) {
    Hive.registerAdapter(MemberModelAdapter());
  }
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, Orientation, DeviceType) {
      return GetMaterialApp(
        home: EventListScreen(),
      );
    });
  }
}
