import 'package:coding_quiz/view/widgets/quiz_template.dart';
import 'package:flutter/material.dart';

class HardCssScreen extends StatelessWidget {
  const HardCssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const QuizTemplate(collectionName: 'css3');
  }
}
