import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CssScreen extends StatelessWidget {
  const CssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CourseDifficultySelectionTemplate(
        courseName: 'CSS', courseImage: 'assets/icons/css.png');
  }
}
