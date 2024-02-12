import 'package:contactapp/AddContact/components/ContactCard.dart';
import 'package:contactapp/UserProfile/View/ContactCard.dart';
import 'package:contactapp/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ContactDataScreen extends StatefulWidget {
  const ContactDataScreen({super.key});

  @override
  State<ContactDataScreen> createState() => _ContactDataScreenState();
}

class _ContactDataScreenState extends State<ContactDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  appBar: AppBar(
                    title: Text(
                      "Add Contact",
                      style:GoogleFonts.karma(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize:9.61.sp,)),
                    centerTitle:true,
                    backgroundColor:Color(0xFFBF782B),
                    leading: InkWell(
                      onTap: () {
                       Navigator.pop(context);
                         },
                      child:Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                    actions:[InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        alignment: Alignment.center,
                      height: 2.59.h,
                      width: 12.70.w,
                       margin: EdgeInsetsDirectional.only(end: 2.15.w,bottom:1.03.h ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                        ),
                      child: Text(
                        'SAVE',
                        style: GoogleFonts.karma(
                          color: Color(0xFFBF782B),
                          fontWeight: FontWeight.w700,
                          fontSize: 6.sp
                          ),),
                      ),
                      ),
                    ],
                    ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(8.5.w, 6.04.h,5.w,6.93.h),
        child: Column(
          children: [ 
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(
                  height: 5.53.h,
                  width: 10.21.w,
                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width:0.22.w,
                      color: Color(0xFFBF782B)
                    )
                  ),
                 ),
                 
                 SizedBox(width: 1.77.h,),
                 
                 Container(
                  height: 5.53.h,
                  width: 10.21.w,
                  decoration:BoxDecoration(
                    color:Color(0xFFFDF4EB) ,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width:0.22.w,
                      color: Color(0xFFBF782B)
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: ()
                        {

                        },
                        child: Icon(Icons.camera_alt_outlined,
                        color:Color(0xFFA56219),
                        size: 15,
                        ),
                      ),
                      Text(
                        'Selfie',
                        style: GoogleFonts.karma(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA56219),
                          fontSize: 3.41.sp,
                        ),
                        ),
                    ],
                  )
                 ),
                 SizedBox(width: 1.w,),
                 ContactCardScreen(),
                ],
              ),

              SizedBox(height: 2.74.h,),
        
        
              Row(
                children: [
                  Expanded(child: 
                  inputfield(
                    'Name'
                  )
                  ),
                  SizedBox(width: 1.91.w,),
                   Expanded(child: 
                  inputfield(
                    'Phone'
                  )
                  )
                ],
              ),

              SizedBox(height: 1.55.h,),

               Row(
                children: [
                  Expanded(child: 
                  inputfield(
                    'Email'
                  )
                  ),
                  SizedBox(width: 1.91.w,),
                   Expanded(child: 
                  inputfield(
                    'Website'
                  )
                  )
                ],
              ),
        
              SizedBox(height: 1.55.h,),

              inputfield(
                'Company'
              ),

              SizedBox(height: 1.55.h,),

               Row(
                children: [
                  Expanded(child: 
                  inputiconfield(
                    'Select Category',
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFFA56219),
                      size: 3.27.w,
                      
                      )
                  )
                  ),
                  SizedBox(width: 1.91.w,),
                   Expanded(child: 
                  inputiconfield(
                    'Select Sub-Category',
                     Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFFA56219),
                      size: 3.27.w,
                      )
                  )
                  )
                ],
              ),

               SizedBox(height: 1.55.h,),

             inputiconfield(
              'Scheduled Meeting',
               Icon(
                Icons.calendar_month,
                color: Color(0xFFA56219),
                      size: 3.27.w,
                      )
             ),

               SizedBox(height: 1.55.h,),

              inputiconfield(
                'Potential',
                 Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xFFA56219),
                      size: 3.27.w,
                      )
              ),

               SizedBox(height: 1.55.h,),

             Container(
              height:6.04.h,
              width: 84.17.w,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFDF4EB)),
                      child: TextField(
                       textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          isDense: true,
                      isCollapsed: true,
                        hintText: 'Notes',
                        hintStyle: GoogleFonts.karma(
                          color: Color(0xFFA56219),
                          fontWeight:FontWeight.w500,
                          fontSize: 4.80.sp,
                        ),
                       contentPadding: EdgeInsets.only(left: 3.2.w,bottom: 4.5.h),                        border: InputBorder.none),),
                      ),

               SizedBox(height: 1.55.h,),

              inputfield(
                'Designation'
              ),
        
        
            SizedBox(height: 2.53.h,),


              InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 3.71.h,
                          width: 33.93.w,
                          margin: EdgeInsetsDirectional.only(end: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFBF782B),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(child: Text(
                            'SAVE',                           
                            style:GoogleFonts.karma(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize:7.20.sp,
                              ),)),
                        ),
                        ),
        
        
        
        
          ],
        ),
      ),
    );
  }



  

  inputiconfield(String name ,Icon icon) {
    return Container(
            height: 3.05.h,
            width: 84.17.w,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFFDF4EB)),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                      hintText: name,
                      hintStyle: GoogleFonts.karma(
                        color: Color(0xFFA56219),
                        fontWeight:FontWeight.w500,
                        fontSize: 4.80.sp,
                      ),
                     suffixIcon: InkWell(
                      onTap: (){

                      },
                      child: icon
                      ),
                      contentPadding:EdgeInsets.all(3.2.w),
                      border: InputBorder.none),),
                    );
  }

  }

inputfield(String name) {
    return Container(
              height: 3.05.h,
              width: 84.17.w,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFDF4EB)),
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                        hintText: name,
                        hintStyle: GoogleFonts.karma(
                          color: Color(0xFFA56219),
                          fontWeight:FontWeight.w500,
                          fontSize: 4.80.sp,
                        ),
                        contentPadding:EdgeInsets.all(3.2.w),
                        border: InputBorder.none),),
                      );
}


