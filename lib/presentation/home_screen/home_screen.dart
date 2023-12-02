import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_demo/application/home_screen/home_screen_bloc.dart';
import 'package:quiz_app_demo/constands/constants.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/presentation/finalpage/final_page.dart';

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
          if (state is AsnwerCompleted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    FinalPage(correctAnswerCount: state.correctAnswerCount),
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
                  child: Container(
                    width: width * 80,
                    height: 10,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (questNumber == questions.length) {
                        BlocProvider.of<HomeScreenBloc>(context)
                            .add(AnswerCompleteEvent());
                        return;
                      }
                      BlocProvider.of<HomeScreenBloc>(context).add(
                        HomeNextQuestionEvent(
                            nextQuestion: questions[questNumber++],
                            wasCorrextAnswers:
                                options[selectedAnswer].isCorrect),
                      );
                      selectedAnswer = -1;
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(color: screenBackgroundColor),
                    ))
            ],
          );
        },
      )),
    );
  }
}

class SelectionBoxWidget extends StatelessWidget {
  const SelectionBoxWidget(
      {super.key,
      required this.width,
      required this.intex,
      required this.option,
      required this.selectedAnswer});

  final double width;
  final int intex;
  final OptionDbModel option;
  final int selectedAnswer;

  @override
  Widget build(BuildContext context) {
    int count = intex + 1;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: width * 80,
        height: 60.0,
        decoration: BoxDecoration(
          color: backgroundColorOfWidget(
              selectedAnswer: selectedAnswer, option: option, intex: intex),
          borderRadius: BorderRadius.circular(
              20.0), // Adjust the radius for more/less curvature
          border: Border.all(
            color: Colors.white, // Border color
            width: 2.0, // Border width
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "$count. ${option.text}",
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Color? backgroundColorOfWidget(
      {required int selectedAnswer,
      required OptionDbModel option,
      required int intex}) {
    if (selectedAnswer == -1) return null;
    if (option.isCorrect) return Colors.green;
    if (selectedAnswer == intex && !option.isCorrect) return Colors.red;
    return null;
  }
}
