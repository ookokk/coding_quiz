import 'package:coding_quiz/service/question_mapper.dart';
import '../models/question_model.dart';

class QuestionRepository {
  Future<Question> getQuestionFromJson(Map<String, dynamic> json) async {
    final question = QuestionMapper.fromJson(json);
    return question;
  }

  Future<Map<String, dynamic>> getQuestionJson(Question question) async {
    final json = QuestionMapper.toJson(question);
    return json;
  }
}
