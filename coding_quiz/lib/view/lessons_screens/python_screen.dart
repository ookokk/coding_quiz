import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class PythonScreen extends StatelessWidget {
  const PythonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void pythonEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_python_screen');
      print('easyknk');
    }

    void pythonMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_python_screen');
      print('medknk');
    }

    void pythonHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_python_screen');
      print('hrdknk');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'Python',
      courseImage: 'assets/icons/python.png',
      easyOntap: () => pythonEasyButton(context),
      mediumOntap: () => pythonMediumButton(context),
      hardOntap: () => pythonHardButton(context),
    );
  }
}
