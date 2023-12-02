import 'package:hive_flutter/adapters.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/domain/questions_model/questions_model.dart';

class QuestionsLocalRepository {
  Future<void> storeDataTodb(List<QuestionsModel> questionModels) async {
    final questionsDb = await Hive.openBox<QuestionDbModel>("questions_db");

    if (questionsDb.isEmpty) {
      for (var element in questionModels) {
        List<OptionDbModel> optionList = [];
        for (var option in element.options!) {
          OptionDbModel optionConvert = OptionDbModel(
              id: "1", text: option.text!, isCorrect: option.isCorrect!);
          optionList.add(optionConvert);
        }
        final value = QuestionDbModel(
            question: element.question!,
            options: optionList,
            createdAt: element.createdAt!,
            updatedAt: element.updatedAt!,
            id: element.id!);
        final id = await questionsDb.add(value);
        questionsDb.put(id, value);
      }
    }
  }

  Future<List<QuestionDbModel>> retreiveQuestions() async {
    List<QuestionDbModel> questionsList = [];
    final questionsDb = await Hive.openBox<QuestionDbModel>("questions_db");
    for (var element in questionsDb.values) {
      questionsList.add(element);
    }
    return questionsList;
  }

  Future<bool> isDatabaseEmpty() async {
    final questionsDb = await Hive.openBox<QuestionDbModel>("questions_db");
    return questionsDb.isEmpty;
  }
}
