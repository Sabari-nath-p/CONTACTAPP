import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBF782B),
        title: const Text(
          'Categories',
          style: TextStyle(
            fontSize: 36.0,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}