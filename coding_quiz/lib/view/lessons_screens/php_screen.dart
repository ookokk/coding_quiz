import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class PhpScreen extends StatelessWidget {
  const PhpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void phpEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_php_screen');
    }

    void phpMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_php_screen');
    }

    void phpHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_php_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'PHP',
      courseImage: 'assets/icons/php.png',
      easyOntap: () => phpEasyButton(context),
      mediumOntap: () => phpMediumButton(context),
      hardOntap: () => phpHardButton(context),
    );
  }
}
