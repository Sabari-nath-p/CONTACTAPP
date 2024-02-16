
import 'package:contactapp/EventListScreen/EventListScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

double width = 8.34;
double height = 15.39;
double fontsize = 3.33;

void main() {
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
