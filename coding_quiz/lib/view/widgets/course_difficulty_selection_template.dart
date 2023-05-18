import 'package:coding_quiz/constants/color.dart';
import 'package:coding_quiz/constants/padding.dart';
import 'package:coding_quiz/constants/text_style.dart';
import 'package:flutter/material.dart';

class CourseDifficultySelectionTemplate extends StatelessWidget {
  final String courseName;
  final String courseImage;
  final VoidCallback easyOnTap;
  final VoidCallback mediumOnTap;
  final VoidCallback hardOnTap;

  const CourseDifficultySelectionTemplate({
    Key? key,
    required this.courseName,
    required this.courseImage,
    required this.easyOnTap,
    required this.mediumOnTap,
    required this.hardOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: MyPadding.defaultPaddingAll,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                courseName,
                textAlign: TextAlign.center,
                style: kXLargeText,
              ),
              const SizedBox(height: 40),
              selectedCourseImageBox(context),
              const SizedBox(height: 50),
              easyButton(),
              const SizedBox(height: 20),
              mediumButton(),
              const SizedBox(height: 20),
              hardButton(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton hardButton() {
    return ElevatedButton(
      onPressed: hardOnTap,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 1, color: Colors.black),
        backgroundColor: CustomColors.kWhite,
        fixedSize: const Size(330, 60),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        'Hard',
        style: kLargeText,
      ),
    );
  }

  ElevatedButton mediumButton() {
    return ElevatedButton(
      onPressed: mediumOnTap,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 1, color: Colors.black),
        backgroundColor: CustomColors.kWhite,
        fixedSize: const Size(330, 60),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        'Medium',
        style: kLargeText,
      ),
    );
  }

  ElevatedButton easyButton() {
    return ElevatedButton(
      onPressed: easyOnTap,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 1, color: Colors.black),
        backgroundColor: CustomColors.kWhite,
        fixedSize: const Size(330, 60),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        'Easy',
        style: kLargeText,
      ),
    );
  }

  SizedBox selectedCourseImageBox(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 3,
        child: Image.asset(courseImage));
  }
}
