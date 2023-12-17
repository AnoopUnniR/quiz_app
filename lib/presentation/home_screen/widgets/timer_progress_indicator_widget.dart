import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_demo/application/home_screenss/home_screen_bloc.dart';
import 'package:quiz_app_demo/core/progress_timer/progress_timer.dart';

class TimerProgressIndicatorWidget extends StatelessWidget {
  const TimerProgressIndicatorWidget(
      {super.key,
      required this.width,
      required this.timer,
      required this.state,
      required this.selectedAnswerIntex});
  final HomeScreenState state;
  final double width;
  final TimerModel timer;
  final int selectedAnswerIntex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SizedBox(
          width: width * 80,
          height: 30,
          child: ValueListenableBuilder(
              valueListenable: timer.progress,
              builder: (context, value, child) {
                if (value == 0) {
                  Future.delayed(const Duration(seconds: 1), () {
                    BlocProvider.of<HomeScreenBloc>(context).add(
                      HomeScreenEvent.nextQuestionEvent(
                        questionList: state.questionList,
                        selectedOptionIntex: selectedAnswerIntex,
                      ),
                    );
                  });
                }
                return Stack(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Transform.rotate(
                        angle: 3.14,
                        child: LinearProgressIndicator(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          value: 1 - (value / 60),
                          backgroundColor:
                              const Color.fromARGB(255, 76, 28, 84),
                          color: Colors.yellow,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            value < 10 ? Colors.red : const Color(0xFFC353D6),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          value.round().toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
