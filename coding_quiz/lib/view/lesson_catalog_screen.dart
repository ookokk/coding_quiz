import 'package:coding_quiz/constants/icons.dart';
import 'package:coding_quiz/constants/padding.dart';
import 'package:coding_quiz/constants/routes.dart';
import 'package:coding_quiz/constants/text_style.dart';
import 'package:flutter/material.dart';

class LessonCatalogScreen extends StatelessWidget {
  const LessonCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: MyPadding.defaultPaddingAll,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Which lesson would you like to learn today?',
                      style: kUbuntuMediumText,
                    ))
                  ],
                ),
                const SizedBox(height: 30),
                cppAndCsRow(context),
                const SizedBox(height: 30),
                cssAndHtmlRow(context),
                const SizedBox(height: 30),
                javaAndPhpRow(context),
                const SizedBox(height: 30),
                pythonAndTypeScriptRow(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row pythonAndTypeScriptRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.pythonScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.pythonIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.typeScriptScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.typescriptIcon)),
          ),
        ),
      ],
    );
  }

  Row javaAndPhpRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.javaScriptScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.javaScriptIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.phpScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.phpIcon)),
          ),
        ),
      ],
    );
  }

  Row cssAndHtmlRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.cssScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.cssIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.htmlScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.htmlIcon)),
          ),
        ),
      ],
    );
  }

  Row cppAndCsRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.cppScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.cppIcon)),
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.cSharpScreen);
            },
            child: const Image(image: AssetImage(LessonIcons.csharpIcon)),
          ),
        ),
      ],
    );
  }
}
