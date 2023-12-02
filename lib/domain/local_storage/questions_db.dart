

import 'package:hive_flutter/adapters.dart';


part 'questions_db.g.dart';

@HiveType(typeId: 0)
class QuestionDbModel {
  @HiveField(0)
  final int? hiveId;
  @HiveField(1)
  final String question;
  @HiveField(2)
  final List<OptionDbModel> options;
  @HiveField(3)
  final DateTime createdAt;
  @HiveField(4)
  final DateTime updatedAt;
  @HiveField(5)
  final String id;
  QuestionDbModel({
    this.hiveId,
    required this.question,
    required this.options,
    required this.createdAt,
    required this.updatedAt,
    required this.id
  });
}

@HiveType(typeId: 1)
class OptionDbModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String text;
  @HiveField(2)
  final bool isCorrect;
  OptionDbModel({
    required this.id,
    required this.text,
    required this.isCorrect,
  });
}
