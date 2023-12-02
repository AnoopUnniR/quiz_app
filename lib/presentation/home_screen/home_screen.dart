import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_demo/application/home_screen/home_screen_bloc.dart';
import 'package:quiz_app_demo/constands/constants.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/presentation/finalpage/final_page.dart';

import 'widgets/selection_box_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<QuestionDbModel> questions;
  const HomeScreen({required this.questions, super.key});

  @override
  Widget build(BuildContext context) {
    int selectedAnswer = -1;
    double width = MediaQuery.of(context).size.width / 100;
    int questNumber = 0;
    QuestionDbModel quest = questions[questNumber];
    List<OptionDbModel> options = [];
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: SafeArea(
          child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        listener: (context, state) {
          //navigates to the final page if questions are all answered.
          if (state is AsnwerCompleted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => FinalPage(
                  correctAnswerCount: state.correctAnswerCount,
                  totalNumberOfQuestions: questions.length,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AnswerSelected) {
            selectedAnswer = state.selectedAnser;
          }
          if (state is HomeScreenNewQuestion) {
            quest = state.question;
          }
          return Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: SizedBox(
                      width: width * 80,
                      height: 20,
                      child: Transform.rotate(
                        angle: 3.14,
                        child: LinearProgressIndicator(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          value: questNumber / questions.length,
                          backgroundColor:
                              const Color.fromARGB(255, 76, 28, 84),
                          color: Colors.yellow,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFC353D6)),
                        ),
                      )),
                ),
              ),
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
                      //returns if the value is allready selected
                      if (selectedAnswer != -1) {
                        return;
                      }
                      BlocProvider.of<HomeScreenBloc>(context)
                          .add(AnswerSelectedEvent(number: index));
                    },
                    child: SelectionBoxWidget(
                      selectedAnswer: selectedAnswer,
                      width: width,
                      intex: index,
                      option: options[index],
                    ),
                  );
                },
              ),
              if (state is AnswerSelected)
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: constantButtonStyles),
                  onPressed: () {
                    //if all questions are over we will call an even to navigate to final page
                    if (questNumber == questions.length) {
                      BlocProvider.of<HomeScreenBloc>(context)
                          .add(AnswerCompleteEvent());
                      return;
                    }
                    BlocProvider.of<HomeScreenBloc>(context).add(
                      HomeNextQuestionEvent(
                          nextQuestion: questions[questNumber++],
                          wasCorrextAnswers: options[selectedAnswer].isCorrect),
                    );
                    selectedAnswer = -1;
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(color: screenBackgroundColor),
                  ),
                )
            ],
          );
        },
      )),
    );
  }
}
