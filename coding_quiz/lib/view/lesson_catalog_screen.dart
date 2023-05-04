import 'package:coding_quiz/constants/icons.dart';
import 'package:coding_quiz/constants/padding.dart';
import 'package:coding_quiz/constants/text_style.dart';
import 'package:coding_quiz/view/widgets/lessons_app_bar.dart';
import 'package:flutter/material.dart';

class LessonCatalogScreen extends StatelessWidget {
  const LessonCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LessonsAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: MyPadding.defaultPaddingAll,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hey Charley,what subject do you want to improve today?',
                      style: kLargeText,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              cppAndCsRow(),
              const SizedBox(height: 30),
              cssAndHtmlRow(),
              const SizedBox(height: 30),
              javaAndPhpRow(),
              const SizedBox(height: 30),
              pythonAndTypeScriptRow()
            ],
          ),
        ),
      ),
    );
  }

  Row pythonAndTypeScriptRow() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.pythonIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.typescriptIcon)),
          ),
        ),
      ],
    );
  }

  Row javaAndPhpRow() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.javaIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.phpIcon)),
          ),
        ),
      ],
    );
  }

  Row cssAndHtmlRow() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.cssIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.htmlIcon)),
          ),
        ),
      ],
    );
  }

  Row cppAndCsRow() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.cppIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: const Image(image: AssetImage(LessonIcons.csharpIcon)),
          ),
        ),
      ],
    );
  }
}
