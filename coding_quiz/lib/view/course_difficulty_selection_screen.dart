import 'package:coding_quiz/constants/color.dart';
import 'package:coding_quiz/constants/padding.dart';
import 'package:coding_quiz/constants/text_style.dart';
import 'package:flutter/material.dart';

import '../constants/icons.dart';

class CourseDifficultySelectionScreen extends StatelessWidget {
  const CourseDifficultySelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: null,
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
                'CPP',
                textAlign: TextAlign.center,
                style: kXLargeText,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 3,
                child: Image(
                  image: AssetImage(LessonIcons.cppIcon),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 1, color: Colors.black),
                  backgroundColor: CustomColors.kWhite,
                  fixedSize: Size(330, 60),
                  shape: StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: Text(
                  'Easy',
                  style: kLargeText,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 1, color: Colors.black),
                  backgroundColor: CustomColors.kWhite,
                  fixedSize: Size(330, 60),
                  shape: StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: Text(
                  'Medium',
                  style: kLargeText,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 1, color: Colors.black),
                  backgroundColor: CustomColors.kWhite,
                  fixedSize: Size(330, 60),
                  shape: StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: Text(
                  'Hard',
                  style: kLargeText,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
