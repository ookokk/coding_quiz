import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class TypeScriptScreen extends StatelessWidget {
  const TypeScriptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void typeScriptEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_typescript_screen');
    }

    void typeScriptMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_typescript_screen');
    }

    void typeScriptHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_typescript_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'TypeScript',
      courseImage: 'assets/icons/typescript.png',
      easyOntap: () => typeScriptEasyButton(context),
      mediumOntap: () => typeScriptMediumButton(context),
      hardOntap: () => typeScriptHardButton(context),
    );
  }
}
