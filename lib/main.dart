import 'package:contactapp/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

double width = 3.8;
double height = 8.5;
double fontsize = 12;

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