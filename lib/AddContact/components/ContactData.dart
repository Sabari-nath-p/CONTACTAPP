import 'package:flutter/material.dart';
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
                    title: Text("Add Contact",style:TextStyle(color: Colors.white),),
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
                      child: Center(child: Text(
                        'SAVE',
                        style: TextStyle(
                          color: Color(0xFFBF782B)
                          ),)),
                      ),
                      ),
                    ],
                    ),


      body: Column(
        children: [
      
      
            
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                   Container(
                    height: 13.2.h,
                    width: 29.7.w,
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width:2,
                        color: Color(0xFFBF782B)
                      )
                    ),
                   ),
      
                   SizedBox(width: 5.w),
                   
                   Container(
                    height: 13.2.h,
                    width: 29.7.w,
                    decoration:BoxDecoration(
                      color:Color(0xFFFDF4EB) ,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width:2,
                        color: Color(0xFFBF782B)
                      )
                    ),
                    child: Icon(Icons.camera_alt_rounded,),
                   )
                  ],
                ),
            ),
      
            SizedBox(height: 5.h),
      
            Row(
              children: [
                Flexible(
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
             
                Flexible(
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
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          suffixIcon:Icon(Icons.arrow_drop_down) 
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                           suffixIcon:Icon(Icons.arrow_drop_down) 
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          suffixIcon:Icon(Icons.calendar_month) 
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          suffixIcon:Icon(Icons.arrow_drop_down) 
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
                        style: TextStyle(
                          color:Colors.white
                          ),)),
                      ),
                      ),
      
                    SizedBox(height: 10.w),
      
      
        ],
      ),
    );
  }
}