import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:flutter/material.dart';

class CSharpScreen extends StatelessWidget {
  const CSharpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void cSharpEasyButton(BuildContext context) {
      Navigator.pushNamed(context, '/easy_c_sharp_screen');
    }

    void cSharpMediumButton(BuildContext context) {
      Navigator.pushNamed(context, '/medium_c_sharp_screen');
    }

    void cSharpHardButton(BuildContext context) {
      Navigator.pushNamed(context, '/hard_c_sharp_screen');
    }

    return CourseDifficultySelectionTemplate(
      courseName: 'C#',
      courseImage: 'assets/icons/c-sharp.png',
      easyOnTap: () => cSharpEasyButton(context),
      mediumOnTap: () => cSharpMediumButton(context),
      hardOnTap: () => cSharpHardButton(context),
    );
  }
}
