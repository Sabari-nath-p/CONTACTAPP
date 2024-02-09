import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddTagScreen extends StatefulWidget {
  const AddTagScreen({super.key});

  @override
  State<AddTagScreen> createState() => _AddTagScreenState();
}

class _AddTagScreenState extends State<AddTagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 120, 43, 1),
        title: const Text(
          'Add Tag',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(4.2.w),
              child: SizedBox(
                width: 201.3.w,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Tag Type',
                      hintStyle: TextStyle(
                        fontSize: 21.6,
                        color: Color.fromRGBO(191, 120, 43, 1),
                      )),
                ),
              ),
            ),
          ),
          Container(
            height: 12.6.h,
            width: 23.8.w,
            color: Color.fromRGBO(191, 120, 43, 1),
            alignment: Alignment.center,
            child: Text(
              'Save',
              style: TextStyle(
                  fontSize: 20.0, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          )
        ],
      ),
    );
  }
}
