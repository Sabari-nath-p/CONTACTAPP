// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProfileModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileModelAdapter extends TypeAdapter<ProfileModel> {
  @override
  final int typeId = 3;

  @override
  ProfileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileModel(
      BackCardID: fields[16] as Uint8List?,
      QrImg: fields[14] as Uint8List?,
      category: fields[7] as String?,
      company: fields[6] as String?,
      designation: fields[12] as String?,
      email: fields[4] as String?,
      eventId: fields[1] as String?,
      frontCardId: fields[15] as Uint8List?,
      meeting: fields[17] as String?,
      mobile: fields[3] as String?,
      name: fields[2] as String?,
      notes: fields[11] as String?,
      Team: fields[8] as String?,
      profileID: fields[0] as String?,
      profileImg: fields[13] as Uint8List?,
      sheduleMeeting: fields[9] as DateTime?,
      tag: fields[10] as String?,
      website: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.profileID)
      ..writeByte(1)
      ..write(obj.eventId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.mobile)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.website)
      ..writeByte(6)
      ..write(obj.company)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.Team)
      ..writeByte(17)
      ..write(obj.meeting)
      ..writeByte(9)
      ..write(obj.sheduleMeeting)
      ..writeByte(10)
      ..write(obj.tag)
      ..writeByte(11)
      ..write(obj.notes)
      ..writeByte(12)
      ..write(obj.designation)
      ..writeByte(13)
      ..write(obj.profileImg)
      ..writeByte(14)
      ..write(obj.QrImg)
      ..writeByte(15)
      ..write(obj.frontCardId)
      ..writeByte(16)
      ..write(obj.BackCardID);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
