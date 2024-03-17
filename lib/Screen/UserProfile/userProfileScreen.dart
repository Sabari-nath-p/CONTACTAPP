import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Screen/UserProfile/View/ContactCard.dart';

import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  ProfileModel model;
  UserProfileScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAappBar(
          context: context,
          title: "User Details",
          isAdd: false,
          isBack: true,
          actionIcon: Icons.settings,
          fn: () {
            //dGet.to(() => AddEventScreen(), transition: Transition.rightToLeft);
          }),
      body: Column(
        children: [
          ContactCard(
            pmodel: model,
          )
        ],
      ),
    );
  }
}
