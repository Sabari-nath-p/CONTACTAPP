
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
        leading: Icon(
                              Icons.arrow_back_ios_new,
                              size: 5.w,
                            ),

        

        title: Text('Add Event', style: GoogleFonts.karma(color: Colors.white,fontSize: 11.sp,fontWeight: FontWeight.w500),),
        backgroundColor: Color(0xffBF782B),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body:
       Padding(padding: EdgeInsets.all(16),
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
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 7.41.h,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffFDF4EB)),
              width: 189.48.w,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Event Name',
                  hintStyle: GoogleFonts.karma(color: Color(0xffA56219), fontSize: 4.sp,),
                  prefixIcon: Icon(
                    Icons.roller_shades_closed,
                    color: Color(0xffA56219), // Example of setting the color
                    size: 24, // Example of setting the size
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
       
            /// code change ended
            /// 
            /// 
            /// 
            /// 
            /// 
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 7.41.h,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffFDF4EB)),
                  width: 189.48.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Location',
                      hintStyle: GoogleFonts.karma(
                          color: Color(0xffA56219),
                          fontSize: 4.sp,
                          fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: Color(0xffA56219), // Example of setting the color
                        size: 24, // Example of setting the size
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 7.41.h,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFDF4EB)),
                width: 189.48.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Start Date',
                    hintStyle: GoogleFonts.karma(color: Color(0xffA56219), fontSize: 4.sp),
                    prefixIcon: Icon(
                      Icons.calendar_month,
                      color: Color(0xffA56219), // Example of setting the color
                      size: 24, // Example of setting the size
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            
       
       
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 7.41.h,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFDF4EB)
              ),
              width: 189.48.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'End Date',
                    hintStyle: GoogleFonts.karma(color: Color(0xffA56219), fontSize: 4.sp),
                    prefixIcon: Icon(
                      Icons.calendar_month,
                      color: Color(0xffA56219), // Example of setting the color
                      size: 24, // Example of setting the size
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            
       
       
       
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 7.41.h,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFDF4EB)
              ),
              width: 189.48.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Attended by',
                    hintStyle: GoogleFonts.karma(color: Color(0xffA56219), fontSize: 4.sp),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xffA56219), // Example of setting the color
                      size: 24, // Example of setting the size
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),



              
                 Padding(padding: EdgeInsets.all(50),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                          height: 5.76.h,
                          width: 15.21.w,
                          margin: EdgeInsetsDirectional.only(end: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFBF782B),
                            borderRadius: BorderRadius.circular(6),
                               
                            ),
                          child: Center(child: Text(
                            'SAVE',
                            style: GoogleFonts.karma(
                              color:Colors.white,
                              ),)),
                          ),
                          ),
                               
                          InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                          height: 5.76.h,
                          width: 15.21.w,
                          margin: EdgeInsetsDirectional.only(end: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFBF782B),
                            borderRadius: BorderRadius.circular(6)
                            ),
                          child: Center(child: Text(
                            'RESET',
                            style: GoogleFonts.karma(
                              color:Colors.white
                              ),)),
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