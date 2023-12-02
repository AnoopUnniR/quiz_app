part of 'splash_screen_bloc.dart';

@immutable
sealed class SplashScreenState {}

final class SplashScreenInitialState extends SplashScreenState {}

final class SplashScreenLoadingState extends SplashScreenState {}

final class SplashScreenLoadingCompleteState extends SplashScreenState {
  final List<QuestionDbModel> questions;
  SplashScreenLoadingCompleteState({required this.questions});
}
