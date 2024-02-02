import 'package:flutter/material.dart';

class DashboradScreen extends StatefulWidget {
  const DashboradScreen({super.key});

  @override
  State<DashboradScreen> createState() => _DashboradScreenState();
}

class _DashboradScreenState extends State<DashboradScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              body: Column(
                children: [
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: Text("SAI",style: TextStyle(fontSize: 20,color: Colors.black),))
                ],
              ),








    );
  }
}