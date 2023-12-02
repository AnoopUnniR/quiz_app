part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent {}

class HomeScreenLoadingEvent extends HomeScreenEvent {
  final List<QuestionDbModel> questions;

  HomeScreenLoadingEvent({required this.questions});
}

class HomeNextQuestionEvent extends HomeScreenEvent {
  final QuestionDbModel nextQuestion;
  final bool wasCorrextAnswers;
  HomeNextQuestionEvent(
      {required this.nextQuestion, required this.wasCorrextAnswers});
}

class AnswerSelectedEvent extends HomeScreenEvent {
  final int number;
  AnswerSelectedEvent({required this.number});
}

class AnswerCompleteEvent extends HomeScreenEvent {

}
