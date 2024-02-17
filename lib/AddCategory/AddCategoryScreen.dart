import 'package:contactapp/MembersScreen/addMember.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Add Category",
          isAdd: false,
          isBack: true,
          fn: () {
            Get.to(() => AddMemberScreen(), transition: Transition.rightToLeft);
          }),
      body: Column(),
    );
  }
}

