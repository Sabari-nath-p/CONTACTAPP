import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TagScreen extends StatelessWidget {
  const TagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 120, 43, 1),
        title: const Text(
          'Tags',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 9.1.h,
            width: 90.2.w,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 4.3.w),
            color: Color.fromRGBO(253, 244, 235, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'High',
                  style: TextStyle(
                      fontSize: 20.0, color: Color.fromRGBO(165, 98, 25, 1)),
                ),
                Container(
                  width: 6.5.h,
                  height: 13.6.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: Icon(Icons.delete),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2.0.h,
          ),
          Container(
            height: 9.1.h,
            width: 201.3.w,
            color: Color.fromRGBO(253, 244, 235, 1),
            child: const Text(
              'medium',
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromRGBO(165, 98, 25, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
