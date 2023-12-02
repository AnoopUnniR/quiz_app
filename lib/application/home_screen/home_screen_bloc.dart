import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitial()) {
    int numberOfCorrectAnswers = 0;
    List<QuestionDbModel> questions = [];
    int intex = 0;
    on<HomeScreenLoadingEvent>((event, emit) {
      questions.addAll(event.questions);
      emit(HomeScreenLoadig());
      emit(HomeScreenNewQuestion(question: questions[intex]));
    });

    on<AnswerSelectedEvent>((event, emit) {
      emit(AnswerSelected(selectedAnser: event.number));
    });
    on<HomeNextQuestionEvent>((event, emit) {
      if (event.wasCorrextAnswers) {
        numberOfCorrectAnswers++;
      }
      emit(HomeScreenNewQuestion(question: event.nextQuestion));
    });
  }
}
