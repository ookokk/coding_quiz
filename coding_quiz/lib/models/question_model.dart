class Question {
  String question;
  Map<String, bool> answers;

  Question({
    required this.question,
    required this.answers,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    Map<String, bool> answers = {};
    for (var entry in json['answers'].entries) {
      answers[entry.key] = entry.value;
    }
    return Question(
      question: json['question'],
      answers: answers,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['question'] = question;
    Map<String, dynamic> answersJson = {};
    for (var entry in answers.entries) {
      answersJson[entry.key] = entry.value;
    }
    json['answers'] = answersJson;
    return json;
  }
}
