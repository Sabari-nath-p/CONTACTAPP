import 'package:contactapp/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:boolean_selector/boolean_selector.dart';
void main(){
  runApp(ContactApp());
}
class ContactApp extends StatelessWidget{
  const ContactApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Sizer(builder:(context,Orientation,DeviceType){
    
     return GetMaterialApp(
     
      home: DashboradScreen(),
     );






    }
    );

    
    
    
    
    
    
    
  }
}