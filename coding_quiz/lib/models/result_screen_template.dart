import 'package:coding_quiz/models/question_model.dart';
import 'package:flutter/material.dart';

import '../constants/padding.dart';

class ResultsScreen extends StatelessWidget {
  final List<Question> questions;
  final List<bool?> userAnswers;

  const ResultsScreen({
    Key? key,
    required this.questions,
    required this.userAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<bool> correctAnswers = [];
    for (var i = 0; i < questions.length; i++) {
      correctAnswers.add(userAnswers[i] ==
          questions[i].answers[questions[i].correctAnswerKey]);
    }

    final int numCorrect = correctAnswers.where((element) => element).length;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: MyPadding.defaultPaddingAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Results',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    '$numCorrect/${questions.length} correct answers',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    final question = questions[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Question ${index + 1}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          question.question,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Your answer: ${userAnswers[index] == null ? 'Not answered' : userAnswers[index]! ? 'Correct' : 'Incorrect'}',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Correct answer: ${question.answers.entries.firstWhere((entry) => entry.value == question.correctAnswerKey).key}',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Divider(
                          thickness: 2,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Back to quiz',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
