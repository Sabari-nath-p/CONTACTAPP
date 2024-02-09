import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Member'),
        backgroundColor: Color.fromRGBO(191, 120, 43, 1),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 6.470.h,
          ),
          Container(
            height: 8.49.h,
            width: 95.94.w,
            margin: EdgeInsets.only(left: 2.w),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 5.368.w),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 244, 235, 1),
              borderRadius: BorderRadius.circular(1.1.w),
            ),
            child: Text("Name" , ),
          ),
        ],
      ),
    );
  }
}
