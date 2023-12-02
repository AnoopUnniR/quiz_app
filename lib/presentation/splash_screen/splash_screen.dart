import 'package:flutter/material.dart';
import 'package:quiz_app_demo/application/splash_screen/splash_screen_bloc.dart';
import 'package:quiz_app_demo/constands/constants.dart';
import 'package:quiz_app_demo/presentation/home_screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              sbh40,
              const Spacer(),
              SizedBox(
                width: width * 90,
                height: width * 90,
                child: Image.asset(
                    "assets/pngtree-quiz-time-speech-bubble-isolated-design-png-image_6579430 1.png"),
              ),
              SizedBox(
                height: 50,
                width: 160,
                child: BlocConsumer<SplashScreenBloc, SplashScreenState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (state is SplashScreenLoadingState) {
                          return;
                        }
                        if (state is SplashScreenLoadingCompleteState) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(
                                questions: state.questions,
                              ),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF8514E1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: (state is SplashScreenLoadingState)
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "Start Quiz",
                              style: TextStyle(color: Colors.white),
                            ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              const Text(
                "powered by",
                style: TextStyle(
                    color: Color(0xFF917296), fontSize: 13, letterSpacing: 1.5),
              ),
              const Text(
                "www.artifitia.com",
                style: TextStyle(
                    color: Color(0xFF917296),
                    letterSpacing: 2,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              sbh40,
            ],
          ),
        ),
      ),
    );
  }
}
