import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_demo/application/home_screenss/home_screen_bloc.dart';
import 'package:quiz_app_demo/constands/constants.dart';

class NextQuestionButtonWidget extends StatelessWidget {
  const NextQuestionButtonWidget({
    required this.state,
    super.key,
  });
  final HomeScreenState state;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: constantButtonStyles),
      onPressed: () {
        // if all questions are over we will call an event to navigate to final page
        if (state.questionList.isEmpty) {
          return;
        }
        BlocProvider.of<HomeScreenBloc>(context).add(
          NextQuestionEvent(
            selectedOptionIntex: state.selectedAnswerIndex,
            questionList: state.questionList,
          ),
        );
      },
      child: const Text(
        "Next",
        style: TextStyle(color: screenBackgroundColor),
      ),
    );
  }
}
