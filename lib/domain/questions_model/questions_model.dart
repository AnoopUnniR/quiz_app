import 'package:json_annotation/json_annotation.dart';

import 'option.dart';

part 'questions_model.g.dart';

@JsonSerializable()
class QuestionsModel {
	@JsonKey(name: '_id') 
	String? id;
	String? question;
	List<Option>? options;
	DateTime? createdAt;
	DateTime? updatedAt;
	@JsonKey(name: '__v') 
	int? v;

	QuestionsModel({
		this.id, 
		this.question, 
		this.options, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory QuestionsModel.fromJson(Map<String, dynamic> json) {
		return _$QuestionsModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$QuestionsModelToJson(this);
}
