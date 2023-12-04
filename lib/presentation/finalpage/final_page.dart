import 'package:flutter/material.dart';
import 'package:quiz_app_demo/constands/constants.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({
    required this.totalNumberOfQuestions,
    required this.correctAnswerCount,
    super.key,
  });
  final int correctAnswerCount;
  final int totalNumberOfQuestions;

  @override
  Widget build(BuildContext context) {
    int scoreInPercent =
        ((correctAnswerCount / totalNumberOfQuestions) * 100).round();
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: width * 80,
                width: width * 80,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image1.png"),
                        ),
                      ),
                      width: width * 80,
                    ),
                    Text(
                      "$scoreInPercent% Score",
                      style: TextStyle(
                          color:
                              scoreInPercent > 50 ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const Text(
                      "Quiz completed successfully...!",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: width * 50,
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          text: 'You attempt',
                          children: <TextSpan>[
                            TextSpan(
                              text: ' $totalNumberOfQuestions Questions',
                              style: const TextStyle(color: Colors.red),
                            ),
                            const TextSpan(text: ' and from that'),
                            TextSpan(
                              text: ' $correctAnswerCount answer',
                              style: const TextStyle(color: Colors.green),
                            ),
                            const TextSpan(text: ' is correct'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sbh40,
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        scoreInPercent > 50 ? Colors.green : Colors.red),
                    shape: constantButtonStyles),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  height: 50,
                  width: 90,
                  child: Center(
                    child: Text(
                      scoreInPercent > 50 ? "Back!" : "Try Again..!",
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
