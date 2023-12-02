import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({
    required this.correctAnswerCount,
    super.key,
  });
  final int correctAnswerCount;
  @override
  Widget build(BuildContext context) {
    double width  = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            height: width*90,
            width: width*90,
            child: Column(),
          ),
        ),
      ),
    );
  }
}
