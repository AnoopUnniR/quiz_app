part of 'splash_screen_bloc.dart';

abstract class SplashScreenEvent{}
class SplashScreenLoadingEvent extends SplashScreenEvent{}

class SplashScreenQuizButtonPressedEvent extends SplashScreenEvent{}