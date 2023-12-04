import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_demo/application/home_screenss/home_screen_bloc.dart';
import 'package:quiz_app_demo/constands/constants.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/presentation/finalpage/final_page.dart';

import 'widgets/selection_box_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          if (state.questionList.isEmpty) {
            return const CircularProgressIndicator();
          }
          QuestionDbModel quest = state.questionList.first;
          return SingleChildScrollView(
            child: Column(
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
                          value: state.questionList.length / 5,
                          backgroundColor:
                              const Color.fromARGB(255, 76, 28, 84),
                          color: Colors.yellow,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFFC353D6),
                          ),
                        ),
                      ),
                    ),
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
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: constantButtonStyles),
                    onPressed: () {
                      // if all questions are over we will call an even to navigate to final page
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
                  )
              ],
            ),
          );
        },
      )),
    );
  }
}

