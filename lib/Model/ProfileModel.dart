import 'dart:io';
import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';
part 'ProfileModel.g.dart';

@HiveType(typeId: 3)
class ProfileModel {
  @HiveField(0)
  String? profileID;
  @HiveField(1)
  String? eventId;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? mobile;
  @HiveField(4)
  String? email;
  @HiveField(5)
  String? website;
  @HiveField(6)
  String? company;
  @HiveField(7)
  String? category;
  @HiveField(8)
  String? Team;
  @HiveField(17)
  String? meeting;
  @HiveField(9)
  DateTime? sheduleMeeting;
  @HiveField(10)
  String? tag;
  @HiveField(11)
  String? notes;
  @HiveField(12)
  String? designation;
  @HiveField(13)
  Uint8List? profileImg;
  @HiveField(14)
  Uint8List? QrImg;
  @HiveField(15)
  Uint8List? frontCardId;
  @HiveField(16)
  Uint8List? BackCardID;

  ProfileModel(
      {this.BackCardID,
      this.QrImg,
      this.category,
      this.company,
      this.designation,
      this.email,
      this.eventId,
      this.frontCardId,
      this.meeting,
      this.mobile,
      this.name,
      this.notes,
      this.Team,
      this.profileID,
      this.profileImg,
      this.sheduleMeeting,
      this.tag,
      this.website});
}
