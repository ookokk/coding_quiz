import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CSharpScreen extends StatelessWidget {
  const CSharpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void cSharpEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_c_sharp_screen');
      print('easyknk');
    }

    void cSharpMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_c_sharp_screen');
      print('medknk');
    }

    void cSharpHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_c_sharp_screen');
      print('hrdknk');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'C#',
      courseImage: 'assets/icons/c-sharp.png',
      easyOntap: () => cSharpEasyButton(context),
      mediumOntap: () => cSharpMediumButton(context),
      hardOntap: () => cSharpHardButton(context),
    );
  }
}
