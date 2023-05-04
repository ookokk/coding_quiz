import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CSharpScreen extends StatelessWidget {
  const CSharpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CourseDifficultySelectionTemplate(
        courseName: 'C#', courseImage: 'assets/icons/c-sharp.png');
  }
}
