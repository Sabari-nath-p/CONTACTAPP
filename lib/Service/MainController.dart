import 'package:contactapp/Model/CategoryModel.dart';
import 'package:contactapp/Model/EventModel.dart';
import 'package:contactapp/Model/MemberModel.dart';
import 'package:contactapp/Model/ProfileModel.dart';
import 'package:contactapp/Model/TagModel.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

class MainController extends GetxController {
  //DB Declaration
  Box? eventDb;
  Box? categoryDb;
  Box? TagDb;
  Box? ProfileDb;
  Box? MemberDb;

  //Model List  Declaration
  List<EventModel> EventList = [];
  List<CategoryModel> categoryList = [];
  List<TagModel> tagList = [];
  List<ProfileModel> profileList = [];
  List<MemberModel> memberList = [];

  //Other User Components
  EventModel? selectedEvent;

  initDb() async {
    eventDb = await Hive.openBox("EVENT_DB");
    getEventList();
    categoryDb = await Hive.openBox("CATEGORY_DB");
    getCategoryList();
    TagDb = await Hive.openBox("TAG_DB");
    getTagList();
    ProfileDb = await Hive.openBox("PROFILE_DB");
    getProfileList();
    MemberDb = await Hive.openBox("MEMBER_DB");
    getMemberList();
  }

  // Event CRUD Section
  getEventList() {
    EventList.clear();
    for (var data in eventDb!.keys) {
      EventList.add(eventDb!.get(data));
    }
    out("Events Fetched (${categoryList.length}})");
    update();
  }

  createUpdateEvent(EventModel ev) {
    eventDb!.put(ev.id, ev);
    out("Event Created ");
    getEventList();
  }

  deleteEvent(String key) {
    eventDb!.delete(key);
    out("Event Deleted ");
  }

// Categeory CRUD Section

  getCategoryList() {
    categoryList.clear();
    for (var data in categoryDb!.keys) {
      categoryList.add(categoryDb!.get(data));
    }
    out("Category Fetched (${EventList.length}})");
    update();
  }

  createUpdateCategory(CategoryModel model) {
    categoryDb!.put(model.id, model);
    out("Category Created ");
    getCategoryList();
  }

// Member CRUD Section

  getMemberList() {
    memberList.clear();
    for (var data in MemberDb!.keys) {
      memberList.add(MemberDb!.get(data));
    }
    out("Member Fetched (${memberList.length}})");
    update();
  }

  createUpdateMember(MemberModel model) {
    MemberDb!.put(model.memberID, model);
    out("Member Created ");
    getMemberList();
  }
  // Tag CRUD Section

  getTagList() {
    tagList.clear();
    for (var data in TagDb!.keys) {
      tagList.add(TagDb!.get(data));
    }
    out("Tag Fetched (${tagList.length}})");
    update();
  }

  createUpdateTag(TagModel model) {
    TagDb!.put(model.id, model);
    out("Tag Created ");
    getTagList();
  }

  deleteTag(String id) {
    TagDb!.delete(id);
    out("Tag Deleted ");
    getTagList();
  }

  // profile Db

  getProfileList() {
    profileList.clear();
    for (var data in ProfileDb!.keys) {
      profileList.add(ProfileDb!.get(data));
    }
    out("Profile Fetched (${profileList.length}})");
    update();
  }

  createUpdateProfile(ProfileModel model) {
    ProfileDb!.put(model.profileID, model);
    out("Profile Created ");
    getProfileList();
  }

  deleteProfile(String id) {
    ProfileDb!.delete(id);
    out("Profile Deleted ");
    getProfileList();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initDb();
  }
}

out(String value) {
  var logger = Logger();
  logger.i("REQUEST -- >  $value -- > Success");
}
