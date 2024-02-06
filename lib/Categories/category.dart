import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
  get z => null;

  get horizontal => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFBF782B),
          title: const Text(
            'Categories',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 27.8.h, horizontal: 11.0.h),
          child: Column(
            children: <Widget>[
              Text(
                'Categories :',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Color(0xFFBF782B),
                ),
              ),
              SizedBox(height: 12.0.h),
              Container(
                height: 8.5.h,
                width: 196.8.w,
                color: Color.fromRGBO(253, 244, 235, 1),
                child: const Text(
                  'palm',
                  style: TextStyle(
                      fontSize: 36.0, color: Color.fromRGBO(191, 120, 43, 1)),
                ),
              ),
              SizedBox(height: 12.0.h),
              Container(
                height: 8.5.h,
                width: 196.8.w,
                color: Color.fromRGBO(253, 244, 235, 1),
                child: const Text(
                  'Wood',
                  style: TextStyle(
                      fontSize: 36.0, color: Color.fromRGBO(191, 120, 43, 1)),
                ),
              ),
              SizedBox(height: 12.0.h),
              Container(
                height: 8.5.h,
                width: 196.8.w,
                color: Color.fromRGBO(253, 244, 235, 1),
                child: const Text(
                  'Bagasse',
                  style: TextStyle(
                      fontSize: 36.0, color: Color.fromRGBO(191, 120, 43, 1)),
                ),
              ),
            ],
          ),
        )

        /* children: const [
          Positioned( 
          top: 149.0,
          left: 42.0,
          child: Text(
            'Categories :',
            style: TextStyle(
              fontSize: 36.0,
              color: Color(0xFFBF782B),
                 ),
             ),
          ),
        ]; */

        );
  }
}
