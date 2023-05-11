import '../models/question_model.dart';

class QuestionMapper {
  static Question fromJson(Map<String, dynamic> json) {
    Map<String, bool> answers = {};
    for (var entry in json['answers'].entries) {
      answers[entry.key] = entry.value;
    }
    return Question(
      question: json['question'],
      answers: answers,
      correctAnswerKey: json['correctAnswer'],
      id: json['id'],
    );
  }

  static Map<String, dynamic> toJson(Question question) {
    Map<String, dynamic> json = {};
    json['question'] = question.question;
    Map<String, dynamic> answersJson = {};
    for (var entry in question.answers.entries) {
      answersJson[entry.key] = entry.value;
    }
    json['answers'] = answersJson;
    return json;
  }
}
