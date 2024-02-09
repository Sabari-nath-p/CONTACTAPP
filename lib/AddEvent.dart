import 'package:contactapp/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(
          'Add Event',
          style: GoogleFonts.karma(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color(0xffBF782B),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5.88.h, // Optional: Height of the SizedBox
            ),

            /// code changed
            ///
            ///
            ///
            ///
            ///
            ///
            _EventTextField(
              "Event Name",
              Icon(
                Icons.roller_skating_rounded,
                color: Color(0xffA56219), // Example of setting the color
                size: 2.27.w, // Example of setting the size
              ),
            ),
            _EventTextField(
              "Location",
              Icon(
                Icons.location_on,
                color: Color(0xffA56219), // Example of setting the color
                size: 2.27.w, // Example of setting the size
              ),
            ),
            _EventTextField(
              "Start Date",
              Icon(
                Icons.date_range_outlined,
                color: Color(0xffA56219), // Example of setting the color
                size: 2.27.w, // Example of setting the size
              ),
            ),
            _EventTextField(
              "End Date",
              Icon(
                Icons.date_range_outlined,
                color: Color(0xffA56219), // Example of setting the color
                size: 2.27.w, // Example of setting the size
              ),
            ),
            _EventTextField(
              "Attended By",
              Icon(
                Icons.roller_skating_rounded,
                color: Color(0xffA56219), // Example of setting the color
                size: 3.27.w, // Example of setting the size
              ),
            ),

            /// code change ended
            ///
            ///
            ///
            ///
            ///

            Padding(
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 5.76.h,
                      width: 20.21.w,
                      margin: EdgeInsetsDirectional.only(end: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFBF782B),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                          child: Text(
                        'SAVE',
                        style: GoogleFonts.karma(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 5.76.h,
                      width: 20.21.w,
                      margin: EdgeInsetsDirectional.only(end: 10),
                      decoration: BoxDecoration(
                          color: Color(0xFFBF782B),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                          child: Text(
                        'RESET',
                        style: GoogleFonts.karma(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_EventTextField(String name, Icon icon) {
  return Container(
    //  margin: EdgeInsets.only(bottom: 5),
    height: 4.32.h,
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.symmetric(vertical: .53.h),
    padding: EdgeInsets.symmetric(
      horizontal: 1.8.w,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Color(0xffFFDF4EB)),
    width: 86.33.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 2,
        ),
        icon,
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: name,
              isDense: true,
              isCollapsed: true,
              hintStyle: GoogleFonts.karma(
                color: Color(0xffA56219),
                fontSize: 7.2.sp,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}
