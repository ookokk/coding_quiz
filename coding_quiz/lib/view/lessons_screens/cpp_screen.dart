import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CppScreen extends StatelessWidget {
  const CppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void cppEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_cpp_screen');
    }

    void cppMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_cpp_screen');
    }

    void cppHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_cpp_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'C++',
      courseImage: 'assets/icons/c++.png',
      easyOntap: () => cppEasyButton(context),
      mediumOntap: () => cppMediumButton(context),
      hardOntap: () => cppHardButton(context),
    );
  }
}
