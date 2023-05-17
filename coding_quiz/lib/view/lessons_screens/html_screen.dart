import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class HtmlScreen extends StatelessWidget {
  const HtmlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void htmlEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_html_screen');
    }

    void htmlMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_html_screen');
    }

    void htmlHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_html_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'HTML',
      courseImage: 'assets/icons/html-5.png',
      easyOntap: () => htmlEasyButton(context),
      mediumOntap: () => htmlMediumButton(context),
      hardOntap: () => htmlHardButton(context),
    );
  }
}
