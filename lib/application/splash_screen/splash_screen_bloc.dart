import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/domain/questions_model/questions_model.dart';
import 'package:quiz_app_demo/infrastructure/db_functions/store_questions_db.dart';
import 'package:quiz_app_demo/infrastructure/get_questions.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  GetQuestionsRepository getQuestionsRepository;
  QuestionsLocalRepository questionsLocalRepository;
  SplashScreenBloc(
      {required this.getQuestionsRepository,
      required this.questionsLocalRepository})
      : super(SplashScreenInitialState()) {
    on<SplashScreenLoadingEvent>((event, emit) async {
      emit(SplashScreenLoadingState());
//checks whether database is empty and proceeds to get the data from server
//and saves it to local database if it is empty.
      if (await questionsLocalRepository.isDatabaseEmpty()) {
        final response = await getQuestionsRepository.getQuizQuests();
        final states = response.fold((questionModel) {
          return questionModel;
        }, (error) => null);
        if (states is List<QuestionsModel>) {
          await questionsLocalRepository.storeDataTodb(states);
          List<QuestionDbModel> questions =  await questionsLocalRepository.retreiveQuestions();
          emit(SplashScreenLoadingCompleteState(questions: questions));
        }
      }
//in case if the database already has the data we will collect it and use it.
      else{
        List<QuestionDbModel> questions =  await questionsLocalRepository.retreiveQuestions();
          emit(SplashScreenLoadingCompleteState(questions: questions));
      }
    });
  }
}
