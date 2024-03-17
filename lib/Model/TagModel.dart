import 'package:hive_flutter/hive_flutter.dart';
part "TagModel.g.dart";

@HiveType(typeId: 2)
class TagModel {
  @HiveField(0)
  String? tagName;
  @HiveField(1)
  String? id;
}
