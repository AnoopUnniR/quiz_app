import 'package:json_annotation/json_annotation.dart';

part 'option.g.dart';

@JsonSerializable()
class Option {
	String? text;
	bool? isCorrect;
	@JsonKey(name: '_id') 
	String? id;

	Option({this.text, this.isCorrect, this.id});

	factory Option.fromJson(Map<String, dynamic> json) {
		return _$OptionFromJson(json);
	}

	Map<String, dynamic> toJson() => _$OptionToJson(this);
}
