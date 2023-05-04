import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class TypeScriptScreen extends StatelessWidget {
  const TypeScriptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CourseDifficultySelectionTemplate(
        courseName: 'TypeScript', courseImage: 'assets/icons/typescript.png');
  }
}
