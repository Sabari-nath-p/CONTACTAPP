import 'package:hive_flutter/hive_flutter.dart';
part "MemberModel.g.dart";

@HiveType(typeId: 4)
class MemberModel {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? designation;
  @HiveField(2)
  String? memberID;
  MemberModel({this.name, this.designation, this.memberID});
}
