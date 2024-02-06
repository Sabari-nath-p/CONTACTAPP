

import 'package:flutter/material.dart';

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
            height: 164.68,
            width: 488,
            decoration: BoxDecoration(
              color:Color(0xFFBF782B),
              borderRadius: BorderRadius.circular(6.46),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete_outlined, color: Colors.white60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}