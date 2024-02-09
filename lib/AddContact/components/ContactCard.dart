import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContactCardScreen extends StatelessWidget {
  const ContactCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            height: 19.3741176.h,
            width: 128.589474.w,
            decoration: BoxDecoration(
              color: Color(0xFFBF782B),
              borderRadius: BorderRadius.circular(6.46),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 40,
                  left: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.46),
                    child: Image.asset(
                      'assets/image/ContactCard.png',
                      width: 104.92.w,
                      height: 14.91.h,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 0,
                  child: Image.asset(
                    'assets/image/trash.png',
                    width: 6.96842105.w,
                    height: 2.88823529.h,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 10,
                  child: Image.asset(
                    'assets/image/plus.png',
                    width: 6.28947368.w,
                    height: 2.73529412.h,
                  ),
                ),
                Positioned(
                  top: (12.3741176.h - 2.88823529.h) / 2,
                  left: 2,
                  child: IconButton(
                    icon: Icon(Icons.chevron_left,color:Color(0xFFBF782B),),
                    onPressed: () {
                      
                    },
                  ),
                ),
                Positioned(
                  top: (12.3741176.h - 2.88823529.h) / 2,
                  right: 40,
                  child: IconButton(
                    icon: Icon(Icons.chevron_right,color:Color(0xFFBF782B) ,),
                    onPressed: () {
                      
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
