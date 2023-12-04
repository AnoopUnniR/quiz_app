part of 'splash_screen_bloc.dart';

abstract class SplashScreenState {}

final class SplashScreenInitialState extends SplashScreenState {}

final class SplashScreenLoadingState extends SplashScreenState {}

final class SplashScreenLoadingCompleteState extends SplashScreenState {
  final List<QuestionDbModel> questions;
  SplashScreenLoadingCompleteState({required this.questions});
}

final class SplashScreenErrorState extends SplashScreenState {
  final String error;
  SplashScreenErrorState({required this.error});
}
