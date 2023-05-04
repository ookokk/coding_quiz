import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class JavaScriptScreen extends StatelessWidget {
  const JavaScriptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CourseDifficultySelectionTemplate(
        courseName: 'JavaScript', courseImage: 'assets/icons/java-script.png');
  }
}
