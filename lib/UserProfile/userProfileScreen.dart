import 'package:contactapp/UserProfile/View/ContactCard.dart';
import 'package:contactapp/utils/appBar.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

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
        children: [ContactCard()],
      ),
    );
  }
}
