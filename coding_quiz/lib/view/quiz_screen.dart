import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/question_model.dart';

class QuizScreen extends StatefulWidget {
  final String collectionName;

  const QuizScreen({Key? key, required this.collectionName}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  List<bool?> _userAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller: _pageController,
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index];
                if (_userAnswers.length < questions.length) {
                  _userAnswers.add(null);
                }
                return Column(
                  children: [
                    Text(question.question),
                    Column(
                      children: question.answers.entries
                          .map((entry) => RadioListTile<bool>(
                                title: Text(entry.key),
                                value: entry.value,
                                groupValue: _userAnswers[index],
                                onChanged: (value) {
                                  setState(() {
                                    _userAnswers[index] = value;
                                  });
                                },
                              ))
                          .toList(),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_userAnswers[index] == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please select an answer.')),
                          );
                        } else {
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        }
                      },
                      child: Text('Next'),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
