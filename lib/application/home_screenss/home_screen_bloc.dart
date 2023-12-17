import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    int correctAnswerCount = 0;
    int totalNumberOfQuestion = 0;
    on<HomeEventStarted>((event, emit) {
      correctAnswerCount = 0;
      totalNumberOfQuestion = event.questionList.length;
      emit(state.copyWith(
        questionList: event.questionList,
      ));
    });
    on<OnAnswerSelected>((event, emit) {
      emit(state.copyWith(
        selectedAnswerIndex: event.selectedOptionIntex,
      ));
    });

    on<NextQuestionEvent>((event, emit) {
      List<QuestionDbModel> questions = [...event.questionList];
      QuestionDbModel question = questions.removeAt(0);
      if (event.selectedOptionIntex == -1) {
        totalNumberOfQuestion--;
      } else if (question.options[event.selectedOptionIntex].isCorrect) {
        correctAnswerCount++;
      }
      emit(state.copyWith(
          selectedAnswerIndex: -1,
          questionList: questions,
          correctAnswerCount: correctAnswerCount,
          totalNumberOfQuestion: totalNumberOfQuestion),
        );
    });
  }
}
