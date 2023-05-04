import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/question_model.dart';

class QuizScreen extends StatelessWidget {
  final String collectionName;

  const QuizScreen({super.key, required this.collectionName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream:
            FirebaseFirestore.instance.collection(collectionName).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<Question> questions = snapshot.data!.docs
                .map((doc) =>
                    Question.fromJson(doc.data() as Map<String, dynamic>))
                .toList();
            return ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index];
                return Column(
                  children: [
                    Text(question.question),
                    Column(
                      children: question.answers.entries
                          .map((entry) => RadioListTile<bool>(
                                title: Text(entry.key),
                                value: entry.value,
                                groupValue: null,
                                onChanged: null,
                              ))
                          .toList(),
                    ),
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
