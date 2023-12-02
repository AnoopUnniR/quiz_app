import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:quiz_app_demo/core/failure/server_failure.dart';
import 'package:quiz_app_demo/domain/questions_model/questions_model.dart';

class GetQuestionsRepository {
  final dio = Dio();
//gets the quiz questions from server
  Future<Either<List<QuestionsModel>, ServerFailure>> getQuizQuests() async {
    Response response;
    try {
       response =
          await dio.get("https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz");
      if (response.statusCode == 200) {
        List<QuestionsModel> questions = [];
        for (var element in response.data) {
          questions.add(QuestionsModel.fromJson(element));
        }
        return Left(questions);
      }
      return Right(ServerFailure(response.toString()));
    } catch (e) {
      return Right(ServerFailure(e.toString()));
    }
  }
}
