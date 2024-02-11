import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffBF782B),
        centerTitle: true,
        title: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 3.h),
                alignment: Alignment.center,
                child: Text(
                  'Events',
                  style: GoogleFonts.karma(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              iconSize: 35,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select The Event To Add Contact",
                  style: GoogleFonts.karma(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFFA56219),
                  ),
                ),
                SizedBox(height: 20), 
                Text(
                  "Event Held Year:",
                  style: GoogleFonts.karma(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFFA56219),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
