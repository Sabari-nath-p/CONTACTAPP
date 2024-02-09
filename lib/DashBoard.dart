import 'package:contactapp/AddCategory/AddCategoryScreen.dart';

import 'package:contactapp/AddContact/components/ContactCard.dart';
import 'package:contactapp/AddContact/components/ContactData.dart';
import 'package:contactapp/AddContact/components/ProfileCard.dart';
import 'package:contactapp/AddContact/components/QRCard.dart';
import 'package:contactapp/AddContact/components/ScannerCard.dart';

import 'package:contactapp/AddEvent.dart';
import 'package:contactapp/AddMember/addMember.dart';
import 'package:contactapp/Categories/category.dart';
import 'package:contactapp/Contacts/components/contactProfile.dart';
import 'package:contactapp/Contacts/components/contactsScreen.dart';
import 'package:contactapp/EventScreen.dart';
import 'package:contactapp/Tags/tags.dart';
import 'package:contactapp/addTags/addTags.dart';
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
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EventScreen()));
                  },
                  child: Text(
                    "SAI",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddEventScreen()));
                  },
                  child: Text(
                    "Nandikesh",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ContactDataScreen()));
                  },
                  child: Text(
                    "fayas",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ContactCardScreen()));
                  },
                  child: Text(
                    "SAI 1",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QRCardScreen()));
                  },
                  child: Text(
                    "fayas 1",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScannerCardScreen()));
                  },
                  child: Text(
                    "nandikesh 1",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileCardScreen()));
                  },
                  child: Text(
                    "sai 2",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddCategoryScreen()));
                  },
                  child: Text(
                    "akluNaynu",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddMemberScreen()));
                  },
                  child: Text(
                    "akluNaynu1",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TagScreen()));
                  },
                  child: Text(
                    "tag screen",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddTagScreen()));
                  },
                  child: Text(
                    "add tag screen",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => contactProfileScreen()));
                  },
                  child: Text(
                    "Contactprofile",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ContactScreen()));
                  },
                  child: Text(
                    "akluNaynu3",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => categoryScreen()));
                  },
                  child: Text(
                    "Category",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))),
          SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
