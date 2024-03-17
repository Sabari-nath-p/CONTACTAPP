import 'package:hive_flutter/hive_flutter.dart';
part 'EventModel.g.dart';

@HiveType(typeId: 0)
class EventModel {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? location;
  @HiveField(2)
  DateTime? StartDate;
  @HiveField(3)
  DateTime? EndDate;
  @HiveField(4)
  String? attendedBy;
  @HiveField(5)
  String? Name;

  EventModel(
      {this.id,
      this.location,
      this.StartDate,
      this.EndDate,
      this.attendedBy,
      this.Name});
}
