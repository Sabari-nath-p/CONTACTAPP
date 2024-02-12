import 'package:contactapp/AddContact/components/QRCard.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ContactCardScreen extends StatelessWidget {
 ContactCardScreen({Key? key}) : super(key: key);
int status=0;
  @override
  Widget build(BuildContext context) {
    return 
     SafeArea(
       child: Container(
        
        
         height: 10.6.h,
         width: 58.24.w,
         decoration: BoxDecoration(
           color: Color(0xFFBF782B),
           borderRadius: BorderRadius.circular(6.46),
         ),
         child: Row(
           children: [
              Container(
       
                 width: 49.w,
                 height: 9.5.h,
                 child: Stack(
                   children:[
                                Image.asset(
                              'assets/image/ContactCard.png',
                             
                              fit: BoxFit.cover,
                   ),
                     Positioned(
                          left: 1.w,
                          top: 1.w,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new,color:Color(0xffA56219),size: 4.w ,),
                          onPressed: () {
                            
                          },
                        ),
                      ),
                       Positioned(
                          right: 1.w,
                          top: 1.w,
                        child: IconButton(
                          icon: Icon(Icons.chevron_right,color:Color(0xffA56219),size: 5.w ,),
                          onPressed: () {
                            
                          },
                        ),
                      ),
     
                   ] 
                 ),
                      ),
                    
              
            
             Column(
               children: [
                 SizedBox(height: 2.h,),
                   Image.asset(
                     'assets/image/trash.png',
                     width: 6.96.w,
                     height: 2.88.h,
                   ),
             SizedBox(height: 1.h,),
              InkWell(
                onTap: (){
                 status=1;
                 if(status==1){
                   Get.to(()=>QRCardScreen());
                 }
                },
                child: Image.asset(
                  'assets/image/plus.png',
                  width: 6.28947368.w,
                  height: 2.73529412.h,
                ),
              ),
       
               ],
             )
       
           ],
         )
             
           
            
           
           
           
       ),
     )
    ;
  }
}
