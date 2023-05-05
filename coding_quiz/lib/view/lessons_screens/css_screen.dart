import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CssScreen extends StatelessWidget {
  const CssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void cssEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_css_screen');
      print('easyknk');
    }

    void cssMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_css_screen');
      print('medknk');
    }

    void cssHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_css_screen');
      print('hrdknk');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'CSS',
      courseImage: 'assets/icons/css.png',
      easyOntap: () => cssEasyButton(context),
      mediumOntap: () => cssMediumButton(context),
      hardOntap: () => cssHardButton(context),
    );
  }
}
