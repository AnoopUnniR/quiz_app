part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.homeEventStarted(
      {required List<QuestionDbModel> questionList}) = HomeEventStarted;
  const factory HomeScreenEvent.onAnswerSelected(
      {required List<QuestionDbModel> questionList,
      required int selectedOptionIntex}) = OnAnswerSelected;
  const factory HomeScreenEvent.nextQuestionEvent(
      {required List<QuestionDbModel> questionList,
      required int selectedOptionIntex}) = NextQuestionEvent;
}
