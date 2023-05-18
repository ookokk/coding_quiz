// ignore_for_file: library_private_types_in_public_api, unrelated_type_equality_checks

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coding_quiz/constants/color.dart';
import 'package:coding_quiz/constants/padding.dart';
import 'package:coding_quiz/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/image_paths.dart';
import '../../models/question_model.dart';

class QuizTemplate extends StatefulWidget {
  final String collectionName;

  const QuizTemplate({Key? key, required this.collectionName})
      : super(key: key);

  @override
  _QuizTemplateState createState() => _QuizTemplateState();
}

class QuizTemplateNotifier extends ChangeNotifier {
  List<bool?> userAnswers = [];
  final List<Question> _questions = [];
  List<Question> get questions => _questions;
  void resetQuiz() {
    userAnswers = List<bool?>.filled(userAnswers.length, null);
    notifyListeners();
  }

  void setUserAnswer(int index, bool? answer) {
    userAnswers[index] = answer;
    notifyListeners();
  }
}

class _QuizTemplateState extends State<QuizTemplate> {
  final PageController pageController = PageController(initialPage: 0);
  late QuizTemplateNotifier quizTemplateNotifier;

  @override
  void initState() {
    super.initState();
    quizTemplateNotifier = QuizTemplateNotifier();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuizTemplateNotifier>(
      create: (_) => QuizTemplateNotifier(),
      child: SafeArea(
        child: Container(
          color: CustomColors.kWhite,
          padding: MyPadding.defaultPaddingAll,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: CustomColors.kWhite,
              elevation: 0,
              leading: AppBarBackButton(context),
            ),
            backgroundColor: Colors.white70,
            body: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection(widget.collectionName)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data == null) {
                  return const Text('No data');
                } else {
                  final List<Question> questions = snapshot.data!.docs
                      .map((doc) =>
                          Question.fromJson(doc.data() as Map<String, dynamic>))
                      .toList();

                  return PageView.builder(
                    controller: pageController,
                    itemCount: questions.length,
                    itemBuilder: (context, index) {
                      final question = questions[index];
                      if (quizTemplateNotifier.userAnswers.length <
                          questions.length) {
                        quizTemplateNotifier.userAnswers =
                            List<bool?>.filled(questions.length, null);
                      }

                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Question ${index + 1}', style: kXLargeText),
                            const SizedBox(height: 30),
                            Text(question.question, style: kMediumText),
                            const SizedBox(height: 30),
                            Column(
                              children: question.answers.entries.map((entry) {
                                final int answerIndex = question.answers.keys
                                    .toList()
                                    .indexOf(entry.key);

                                return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: buildOptionsButton(
                                      index, entry, context, answerIndex),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 30),
                            buildNextQuestionButton(),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  IconButton AppBarBackButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        size: MediaQuery.of(context).size.height * 0.03,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  ElevatedButton buildOptionsButton(int index, MapEntry<String, bool> entry,
      BuildContext context, int answerIndex) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      onPressed: () {
        quizTemplateNotifier.setUserAnswer(index, entry.value);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: kDefaultIconDarkColor,
                title: Text(
                  'Your Answer: ${quizTemplateNotifier.userAnswers[index]}',
                  style: const TextStyle(color: Colors.white70),
                ));
          },
        );
        Future.delayed(const Duration(seconds: 2))
            .then((value) => Navigator.pop(context));
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imagePaths[answerIndex],
              width: MediaQuery.of(context).size.width * 0.1,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 8,
              width: 8,
            ),
            Expanded(child: Text(entry.key, style: kVerySmallText)),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildNextQuestionButton() {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      onPressed: () {
        pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Text('Next Question', style: kMediumText),
    );
  }
}
