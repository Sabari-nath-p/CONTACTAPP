import 'package:contactapp/AddCategory/AddCategoryScreen.dart';
import 'package:contactapp/EventListScreen/View/AddEvent.dart';
import 'package:contactapp/MembersScreen/addMember.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/route_manager.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "Members",
          isAdd: true,
          isBack: true,
          fn: () {
            Get.to(() => AddMemberScreen(), transition: Transition.rightToLeft);
          }),
    );
  }
}
