import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants/image_paths.dart';
import '../models/question_model.dart';

class QuizTemplate extends StatefulWidget {
  final String collectionName;

  const QuizTemplate({Key? key, required this.collectionName})
      : super(key: key);

  @override
  _QuizTemplateState createState() => _QuizTemplateState();
}

class _QuizTemplateState extends State<QuizTemplate> {
  final PageController pageController = PageController(initialPage: 0);
  List<bool?> userAnswers = [];
  int score = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 26, 16, 8),
        child: Scaffold(
          body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection(widget.collectionName)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (!snapshot.hasData || snapshot.data == null) {
                return Text('No data');
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
                    if (userAnswers == null ||
                        userAnswers.length < questions.length) {
                      userAnswers = List<bool?>.filled(questions.length, null);
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Question ${index + 1}'),
                        Text(question.question),
                        Column(
                          children: question.answers.entries.map((entry) {
                            final int answerIndex = question.answers.keys
                                .toList()
                                .indexOf(entry.key);
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    userAnswers[index] = entry.value;
                                    if (userAnswers
                                        .every((answer) => answer != null)) {
                                      // If all questions are answered, show the quiz completed dialog
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Quiz Completed'),
                                          content: Text('Your score: $score'),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                resetQuiz();
                                              },
                                              child: Text('OK'),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {}
                                    if (entry.value ==
                                        question.correctAnswerKey) {
                                      score++; // Increase score if the answer is correct
                                    }
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      imagePaths[answerIndex],
                                      width: 66,
                                      height: 16,
                                    ),
                                    SizedBox(height: 8),
                                    Text('${entry.key}'),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text('Next Question'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }

  void resetQuiz() {
    setState(() {
      userAnswers = List<bool?>.filled(userAnswers.length, null);
      score = 0;
    });
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    ); // reset the page to the first question
  }
}
