import 'package:coding_quiz/view/lessons_screens/java_script_screen.dart';
import 'package:coding_quiz/view/widgets/course_difficulty_selection_template.dart';
import 'package:coding_quiz/view/quiz_screen.dart';
import 'package:coding_quiz/view/widgets/quiz_template.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'view/lesson_catalog_screen.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(),
        home: QuizTemplate());
  }
}
