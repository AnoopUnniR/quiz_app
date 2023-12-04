part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.started(
      {required List<QuestionDbModel> questionList,
      required int selectedAnswerIndex,
      required int correctAnswerCount,
      
      required int totalNumberOfQuestion}) = Started;
  factory HomeScreenState.initial() => const HomeScreenState.started(
      correctAnswerCount: 0,
      questionList: [],
      selectedAnswerIndex: -1,
      totalNumberOfQuestion: 0);
}
