import 'package:contactapp/main.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Category"),
        backgroundColor: const Color.fromRGBO(191, 120, 43, 1),
        centerTitle: true,
      ),
      body: Column(
        children: [
        SizedBox(height: 8.23.h),
        Container(
          margin: EdgeInsets.only(left: 5.47.w,right: 5.47.w),
        height: 8.47.h,
        width: 190.w,
        alignment: Alignment.centerLeft,
        padding:EdgeInsets.only(left:3.w) ,
        
        decoration:BoxDecoration(
      
        borderRadius: BorderRadius.circular(2.10.w),
      color: const Color.fromRGBO(253, 244, 235, 1)),
      
      child: const Text("Name",style: TextStyle(
      color: Color.fromRGBO(165, 98, 25, 1,),
      fontWeight: FontWeight.w500,
      fontSize:20,
      fontStyle:FontStyle.normal),),
      


      ),
              SizedBox(height: 4.94.h),
              
        Container(
          margin: EdgeInsets.only(left: 5.47.w,right: 5.47.w),
        height: 27.05.h,
        width: 190.w,
      
        alignment: Alignment.centerLeft,
        
        padding:EdgeInsets.only(left:3.w) ,
        
        decoration:BoxDecoration(
      
        borderRadius: BorderRadius.circular(2.10.w),
      color: const Color.fromRGBO(253, 244, 235, 1)),
    
      
        child: Align(
    alignment: Alignment.topLeft,
    

        child:  Text("Description",style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        fontSize:20,
        fontStyle:FontStyle.normal,
        
        textBaseline: TextBaseline.alphabetic,
        ),
          
        ),
        ),
        
        
     
      
  
),
      
      
      

        
      ],



),
    );
  }
}

      
