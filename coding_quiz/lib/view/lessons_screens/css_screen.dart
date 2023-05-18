import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CssScreen extends StatelessWidget {
  const CssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void cssEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_css_screen');
    }

    void cssMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_css_screen');
    }

    void cssHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_css_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'CSS',
      courseImage: 'assets/icons/css.png',
      easyOnTap: () => cssEasyButton(context),
      mediumOnTap: () => cssMediumButton(context),
      hardOnTap: () => cssHardButton(context),
    );
  }
}
