// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionDbModelAdapter extends TypeAdapter<QuestionDbModel> {
  @override
  final int typeId = 0;

  @override
  QuestionDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionDbModel(
      hiveId: fields[0] as int?,
      question: fields[1] as String,
      options: (fields[2] as List).cast<OptionDbModel>(),
      createdAt: fields[3] as DateTime,
      updatedAt: fields[4] as DateTime,
      id: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionDbModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.hiveId)
      ..writeByte(1)
      ..write(obj.question)
      ..writeByte(2)
      ..write(obj.options)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OptionDbModelAdapter extends TypeAdapter<OptionDbModel> {
  @override
  final int typeId = 1;

  @override
  OptionDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OptionDbModel(
      id: fields[0] as String,
      text: fields[1] as String,
      isCorrect: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, OptionDbModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.isCorrect);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
