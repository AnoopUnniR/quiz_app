part of 'home_screen_bloc.dart';


abstract class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenLoadig extends HomeScreenState {}

final class HomeScreenNewQuestion extends HomeScreenState {
  final QuestionDbModel question;
  HomeScreenNewQuestion({required this.question});
}

class AnswerSelected extends HomeScreenState {
  final int selectedAnser;
  AnswerSelected({required this.selectedAnser});
}

class AsnwerCompleted extends HomeScreenState {
  final int correctAnswerCount;
  AsnwerCompleted({required this.correctAnswerCount});
  
}
