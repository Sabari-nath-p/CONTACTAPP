import 'package:contactapp/UserProfile/userProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => UserProfileScreen(), transition: Transition.rightToLeft);
      },
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
                

          
          Positioned(
          top:35.85.h,
          left:86.93.w,
          
            child: Container(
              height: 14.99.h,
              width:85.85.w,
            
              decoration: BoxDecoration(
                color: Color.fromRGBO(237, 223, 209, 1),
                borderRadius: BorderRadius.circular(2.39.w),
              ),
              margin: EdgeInsets.symmetric(horizontal: 6.35.w, vertical: 10),
              child: Stack(
                children: [
                  Positioned(
                    top: 2.72.h,
                    left: 5.w,
                    child:  Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                                    height:8.h ,
                                    width: 14.38.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(237, 223, 209, 1),
                                    ),
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/image/profile.png",
                                         height:8.h ,
                                    width: 14.38.w,
                                    fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                    ),
                  ),
                  Positioned(
                    left: 24.42.w,
                    //height: .05.h,
            
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    
                    
                         Text("Steven",
                                         
                                         style: GoogleFonts.karma(
                                      fontSize: 14.33.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(165, 98, 25, 1)),
                                ),
                       
                    
                   SizedBox(height: .05.h),
                    Text("9980766765",
                    style: GoogleFonts.karma(
                                  fontSize: 12.33.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(165, 98, 25, 1)),
                            ),
                      SizedBox(height: .05.h),
                    Text("steven12@gmail.com",
                    style: GoogleFonts.karma(
                                  fontSize: 12.33.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(165, 98, 25, 1)),
                            ),
                    SizedBox(height: .05.h),
                    Text("Potential - High",
                    style: GoogleFonts.karma(
                                  fontSize: 12.33.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(165, 98, 25, 1)),
                            ),
                           
                              
                              
                            
                
                    
                  ],
                ),
              ),
              Positioned( top: 1.49.h,
              left: 73.15.w,
              child:Container(
              
                                    height:2.25.h ,
                                    width: 6.12.w,
              
                child: Image.asset("assets/image/arrowleft.png"),
                  
              ),
                ),
                Positioned( top: 11.4.h,
              left: 75.15.w,
              child:Container(
              
                                    height:2.25.h ,
                                    width: 5.19.w,
              
                child: Image.asset("assets/image/mailcheck.png"),
                  
              ),
                ),
                ],
            ),
                ),
          ),
              

              
        ],
        
      ),
    );
  }
}
