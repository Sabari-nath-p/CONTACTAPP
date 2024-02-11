import 'package:contactapp/AddContact/components/ContactData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ContactDataScreen());
      },
      child: 
              Padding(
                padding: EdgeInsets.fromLTRB(3.w, 2.5.h, 0, 0),
                child: Container(
                          
                           width:95.w ,
                
                 decoration: BoxDecoration(
                  color:Color(0xffBF782B).withOpacity(0.28),
                  borderRadius: BorderRadius.circular(5),
                 ),
                
                          child: Row(
                    children: [
                     
                        
                       Padding(
                         padding: EdgeInsets.only(left: 5.w),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            SizedBox(height: 2.h,),
                             Padding(
                               padding: EdgeInsets.only(left: 6.w),
                               child: Column(
                                 children: [
                                   CircleAvatar(radius: 6.w,backgroundColor: Color(0xffA56219),
                                   
                                   child: Image.asset("assets/image/person.png"),
                                                            
                                     ),
                                      Text("Steven",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w800),textAlign: TextAlign.center,),
                                                     
                                 ],
                               ),
                             ),
                              Row(
                               children: [
                                   Text("Mobile :",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w600),textAlign: TextAlign.right,),
                                    Text(" 9980766765",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w400),textAlign: TextAlign.right,),
                               ],
                             ),
                               SizedBox(height: 0.8.w,),
                                          Row(
                                           children: [
                          Text("Email :",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w600),textAlign: TextAlign.right,),
                           Text(" steven123@gmail.com",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w400),textAlign: TextAlign.right,),
                          
                                     
                                           
                                           ],
                                ),
                                        SizedBox(height: 0.8.w,),
                                          Row(
                                           children: [
                          Text("Category :",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w600),textAlign: TextAlign.right,),
                           Text(" Palm",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w400),textAlign: TextAlign.right,),
                                           ],
                                ),
                                        SizedBox(height: 0.8.w,),
                                          Row(
                                           children: [
                          Text("Potential :",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w600),textAlign: TextAlign.right,),
                           Text(" High",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w400),textAlign: TextAlign.right,),
                                           ],
                                ),
                                         SizedBox(height: 0.8.w,),
                                  ]),
                           ),
                           Column(
                             children: [
                               Align(
                                alignment: Alignment.topRight,
                                 child: Container(
                                   width: 37.w,
                                   height: 8.h,
                                   decoration: BoxDecoration(
                                                border: Border.all( color:Color(0xffA56219),width: 0.15.w),
                                                 borderRadius: BorderRadius.circular(3),
                                                ) ,
                                                child: Image.asset("assets/image/ContactCard.png",fit: BoxFit.cover,)
                                 ),
                               ),
                               SizedBox(height: 4.h,),
                               Row( 
                           crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            
                             Text("Company :",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w600),textAlign: TextAlign.right,),
                              Text(" Ey technologies,Amsterdam",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w400),textAlign: TextAlign.right,),
                      ],),
                       SizedBox(height: 1.w,),
                      Row(
                      children: [
                             Text("Designation :",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w600),textAlign: TextAlign.right,),
                              Text(" Sales Executive",style:GoogleFonts.karma(color: Color(0xffA56219),fontSize: 8.4.sp,fontWeight:FontWeight.w400),textAlign: TextAlign.right,),
                      ],
                                        ),
                    
                             ],
                           ),
                            
                       
                                        
                           SizedBox(height: 2.h,)  
                      
                           ],
                         ),
                       ),
                        
                      
                  
                    
                    
                    
                  ),
                  // remove the code of image and implement design code
                  //
                  // write design code here
                  //
                  //
                 
                  
                 
                  
                 
                           
                           
                        
              
          
       
    );
  }
}
