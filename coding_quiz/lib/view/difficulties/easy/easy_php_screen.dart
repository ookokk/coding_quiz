import 'package:coding_quiz/view/widgets/quiz_template.dart';
import 'package:flutter/material.dart';

class EasyPhpScreen extends StatelessWidget {
  const EasyPhpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const QuizTemplate(collectionName: 'php1');
  }
}
