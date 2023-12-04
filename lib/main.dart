import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quiz_app_demo/application/home_screenss/home_screen_bloc.dart';
import 'package:quiz_app_demo/application/splash_screen/splash_screen_bloc.dart';
import 'package:quiz_app_demo/domain/local_storage/questions_db.dart';
import 'package:quiz_app_demo/infrastructure/db_functions/store_questions_db.dart';
import 'package:quiz_app_demo/infrastructure/get_questions.dart';
import 'package:quiz_app_demo/presentation/splash_screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(QuestionDbModelAdapter().typeId)) {
    Hive.registerAdapter(QuestionDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(OptionDbModelAdapter().typeId)) {
    Hive.registerAdapter(OptionDbModelAdapter());
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final questionsLocalRepository = QuestionsLocalRepository();
    final getQuestionsRepository = GetQuestionsRepository();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashScreenBloc(
                getQuestionsRepository: getQuestionsRepository,
                questionsLocalRepository: questionsLocalRepository)
              ..add(SplashScreenLoadingEvent()),
          ),
          BlocProvider(
            create: (context) => HomeScreenBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "Roboto"),
          home: const SplashScreen(),
        ));
  }
}
