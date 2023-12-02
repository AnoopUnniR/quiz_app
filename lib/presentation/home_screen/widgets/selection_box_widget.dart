import 'package:flutter/material.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';

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
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.white,
            width: 2.0,
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
