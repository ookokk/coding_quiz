import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class PythonScreen extends StatelessWidget {
  const PythonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CourseDifficultySelectionTemplate(
        courseName: 'Python', courseImage: 'assets/icons/python.png');
  }
}
