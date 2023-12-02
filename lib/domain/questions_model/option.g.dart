// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      text: json['text'] as String?,
      isCorrect: json['isCorrect'] as bool?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'text': instance.text,
      'isCorrect': instance.isCorrect,
      '_id': instance.id,
    };
