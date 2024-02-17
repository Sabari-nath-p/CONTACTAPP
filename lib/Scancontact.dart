import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Scancontact extends StatelessWidget {
  const Scancontact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
leading: InkWell(
                      onTap: () {
                       Navigator.pop(context);
                         },
                      child:Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
        title: Text(
          "Capture Images",
          style: GoogleFonts.karma(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFBF782B),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8.5.w, 8.04.h,5.w,6.93.h),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: 
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.46), color: Color(0xFFFDF4EB), ),
                  width: 28.017.w,
                  height:3.36.h ,
                  child:
                   Row(
                    
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/image/scanqr.png",color: Color(0xFFA56219),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child:  Text("Qr Scan",
                          style:GoogleFonts.karma(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 5.64.sp,
                                      color: Color(0xFFA56219),
                                    ), 
                                    ),
                        ),
                        
                         
                      ],
                  ),
                  
                  
                )
                ),
                SizedBox(width: 10,),
                Expanded(child: 
                Container(
                   width: 28.017.w,
                  height:3.36.h ,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.46), color: Color(0xFFFDF4EB), ),
                    child:
                   Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/image/scancontact.png",color: Color(0xFFA56219),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Front Contact Card",
                          style:GoogleFonts.karma(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 5.64.sp,
                                      color: Color(0xFFA56219),
                                    ), 
                                    ),
                        ),
                        
                         
                      ],
                  ),
                )),
                SizedBox(width: 10,),
                Expanded(child: 
                Container(
                   width: 28.017.w,
                  height:3.36.h ,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.46), color: Color(0xFFFDF4EB), ),
                  child:
                   Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/image/scancontact.png",color: Color(0xFFA56219),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Back Contact Card",
                          style:GoogleFonts.karma(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 5.64.sp,
                                      color: Color(0xFFA56219),
                                    ), 
                                    ),
                        ),
                        
                         
                      ],
                  ),
               ))
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            
         Container(
          
  height: 33.60.h,
  width: 71.8.w,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16.46),
    color: Color(0xFFBF782B),
  ),
  
  child: Padding(
    padding: EdgeInsets.only(top: 10), 
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
             
             SizedBox(width: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                'Cam Scan',
                style: GoogleFonts.karma(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
               textAlign: TextAlign.center,
              ),
            ),
            Padding(
               padding: EdgeInsets.all(10),
               
               child: Image.asset("assets/image/reload.png",color: Colors.white,width: 15,height: 15,),
             ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            
            child: Image.asset("assets/image/Scanner.png",
            height:13.54.h,
            width: 30.83.w,),
          ),
        )
      ],
    ),
  ),
  
),],
          
        ),
      
    )
    );
  }
}
