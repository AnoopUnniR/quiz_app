import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_demo/application/home_screenss/home_screen_bloc.dart';
import 'package:quiz_app_demo/constands/constants.dart';
import 'package:quiz_app_demo/core/progress_timer/progress_timer.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/presentation/finalpage/final_page.dart';

import 'widgets/next_question_button_widget.dart';
import 'widgets/selection_box_widget.dart';
import 'widgets/timer_progress_indicator_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TimerModel timer = TimerModel();
    double width = MediaQuery.of(context).size.width / 100;
    List<OptionDbModel> options = [];
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: SafeArea(
          child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        listener: (context, state) {
          //navigates to the final page if questions are all answered.
          if (state.questionList.isEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => FinalPage(
                      correctAnswerCount: state.correctAnswerCount,
                      totalNumberOfQuestions: state.totalNumberOfQuestion),
                ),
              );
            });
          }
        },
        builder: (context, state) {
          if (state.questionList.isNotEmpty &&
              state.selectedAnswerIndex == -1) {
            timer.progress.value = 60;
            timer.startTimer();
          }

          if (state.questionList.isEmpty) {
            timer.progress.value = 60;
            return const CircularProgressIndicator();
          }
          //calling the timer function to update progress bar
          QuestionDbModel quest = state.questionList.first;
          return SingleChildScrollView(
            child: Column(
              children: [
                TimerProgressIndicatorWidget(selectedAnswerIntex: state.selectedAnswerIndex,
                    width: width, timer: timer, state: state),
                const SizedBox(
                  height: 80,
                ),
                //Question widget
                SizedBox(
                  width: width * 90,
                  child: Text(
                    quest.question,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: quest.options.length,
                  itemBuilder: (context, index) {
                    options = [...quest.options];
                    return InkWell(
                      onTap: () {
                        //returns if the value is already selected
                        if (state.selectedAnswerIndex != -1) {
                          return;
                        }
                        BlocProvider.of<HomeScreenBloc>(context).add(
                            OnAnswerSelected(
                                selectedOptionIntex: index,
                                questionList: state.questionList));
                      },
                      child: SelectionBoxWidget(
                        selectedAnswer: state.selectedAnswerIndex,
                        width: width,
                        intex: index,
                        option: options[index],
                      ),
                    );
                  },
                ),
                if (state.selectedAnswerIndex != -1)
                  NextQuestionButtonWidget(
                    state: state,
                  )
              ],
            ),
          );
        },
      )),
    );
  }
}
