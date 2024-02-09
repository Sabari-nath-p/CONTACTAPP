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
                    title: Text("Add Contact",style:GoogleFonts.karma(color: Colors.white,fontWeight: FontWeight.w600),),
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
                      height: 25,
                      width: 60,
                      margin: EdgeInsetsDirectional.only(end: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                        ),
                      child: Center(
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.karma(
                            color: Color(0xFFBF782B),
                            fontWeight: FontWeight.w600
                            ),),
                      ),
                      ),
                      ),
                    ],
                    ),


      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 5.h,),
          
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Align(
                        alignment: Alignment.centerLeft,
                         child: Container(
                          height: 12.5.h,
                          width: 25.w,
                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width:2,
                              color: Color(0xFFBF782B)
                            )
                          ),
                         ),
                       ),

                       SizedBox(width: 5.w),
                       
                       Align(
                        alignment: Alignment.centerLeft,
                         child: Container(
                          height: 12.5.h,
                          width: 25.w,
                          decoration:BoxDecoration(
                            color:Color(0xFFFDF4EB) ,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width:2,
                              color: Color(0xFFBF782B)
                            )
                          ),
                          child: Icon(Icons.camera_alt_rounded,),
                         ),
                       )
                      ],
                    ),
                ),
          
                SizedBox(height: 2.h),
          
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              hintText: 'Name',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
                    ),

                     SizedBox(width: 5.w),
                 
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                         height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Phone',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          
               
          
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              hintText: 'Email',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
                    ),

                     SizedBox(width: 5.w),
                   
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Website',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          
                
          
          
                 Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Company',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
          
                      
          
                      Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              hintText: 'Select Category',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              ),
                              suffixIcon:Icon(Icons.arrow_drop_down,color: Color(0xFFA56219),) 
                            ),
                          ),
                        ),
                      ),
                    ),

                     SizedBox(width: 5.w),
                   
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                         height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Select Sub-Category',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              ),
                               suffixIcon:Icon(Icons.arrow_drop_down,color: Color(0xFFA56219),) 
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          
                
          
                Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Scheduled Meeting',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              ),
                              suffixIcon:Icon(Icons.calendar_month,color: Color(0xFFA56219),) 
                            ),
                          ),
                        ),
                      ),
          
                      
          
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Potential',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              ),
                              suffixIcon:Icon(Icons.arrow_drop_down,color:Color(0xFFA56219) ,) 
                            ),
                          ),
                        ),
                      ),
          
                   
          
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Notes',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
          
                      
          
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: SizedBox(
                          height: 7.41.h,
                          width: 189.5.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFDF4EB) ,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Designation',
                              hintStyle: GoogleFonts.karma(fontWeight: FontWeight.w600,color: Color(0xFFA56219)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                      ),
          
          
              
              
                InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                          height:5.h,
                          width: 40.w,
                          margin: EdgeInsetsDirectional.only(end: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFBF782B),
                            borderRadius: BorderRadius.circular(5)
                            ),
                          child: Center(child: Text(
                            'SAVE',                           
                            style:GoogleFonts.karma(fontWeight: FontWeight.w600,color: Colors.white),)),
                          ),
                          ),
          
          
          
          
            ],
          ),
        ],
      ),
    );
  }
}