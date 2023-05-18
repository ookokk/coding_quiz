class Question {
  String question;
  Map<String, bool> answers;
  String correctAnswerKey;
  String? userAnswer;
  bool isAnswered;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswerKey,
    required String id,
    this.userAnswer,
    this.isAnswered = false,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    String correctAnswerKey = '';
    Map<String, dynamic> answersJson = json['answers'] as Map<String, dynamic>;

    Map<String, bool> answers = answersJson.map((key, value) {
      if (value is bool && value) {
        correctAnswerKey = key;
      }
      return MapEntry(key, value as bool);
    });

    return Question(
      id: json['id'] as String? ?? '',
      question: json['question'] != null ? json['question'] as String : '',
      answers: answers,
      correctAnswerKey: correctAnswerKey,
      userAnswer: null,
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
    json['correctAnswerKey'] = correctAnswerKey;
    json['userAnswer'] = userAnswer;
    return json;
  }

  void setUserAnswer(String answer) {
    userAnswer = answer;
  }

  MapEntry<String, bool> getCorrectAnswerEntry() {
    return answers.entries.firstWhere((entry) => entry.value == true);
  }
}
