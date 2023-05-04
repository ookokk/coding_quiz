import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class HtmlScreen extends StatelessWidget {
  const HtmlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CourseDifficultySelectionTemplate(
        courseName: 'HTML', courseImage: 'assets/icons/html-5.png');
  }
}
