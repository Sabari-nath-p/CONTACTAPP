import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class QRCardScreen extends StatelessWidget {
  const QRCardScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            height: 19.374.h,
            width: 128.421053.w,
            decoration: BoxDecoration(
              color: Color(0xFFBF782B),
              borderRadius: BorderRadius.circular(6.46),
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/QRimage.png',
                    width: 44.7368421.w,
                    height: 73.2941176.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  bottom: 45,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
