import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class JavaScriptScreen extends StatelessWidget {
  const JavaScriptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void javaEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_java_script_screen');
    }

    void javaMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_javascript_screen');
    }

    void javaHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_javascript_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'JavaScript',
      courseImage: 'assets/icons/java-script.png',
      easyOnTap: () => javaEasyButton(context),
      mediumOnTap: () => javaMediumButton(context),
      hardOnTap: () => javaHardButton(context),
    );
  }
}
