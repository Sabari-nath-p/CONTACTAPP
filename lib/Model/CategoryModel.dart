import 'package:hive_flutter/hive_flutter.dart';
part 'CategoryModel.g.dart';

@HiveType(typeId: 1)
class CategoryModel {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? categoryName;
  @HiveField(2)
  String? description;
  CategoryModel({this.categoryName, this.description, this.id});
}
